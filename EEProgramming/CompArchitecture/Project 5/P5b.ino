#include <LiquidCrystal.h>
#include <DFR_Key.h>
#include <TinyGPS.h>

// Define macro identifiers
#define  TOP_MENU    0
#define  ENTER_LAT   1
#define  ENTER_LONG  2
#define  NAV         3
#define  END_DISP    15
// ENTER DEFINITIONS FOR ADDITIONAL MACRO IDENTIFIERS AS NEEDED



// Define constants
const int DFRKEY = 0;
// ENTER DEFINITIONS FOR ADDITIONAL CONSTANTS AS NEEDED



// Declare Variables
LiquidCrystal lcd(8, 9, 4, 5, 6, 7); //REPLACE LETTERS A-F WITH THE PINS YOU WILL USE IN YOUR DESIGN
TinyGPS gps;                         //construct an instance of the TinyGPS class
DFR_Key keypad;                      //construct an instance of the DFR_Key class
unsigned char localKey = 0;
String keyString = "";
String top_menu_txt[3] = {"1. Enter Lat.", "2. Enter Long.", "3. Navigate"};
char top_menu_line = 0;          //variables to track current LCD line/column position
unsigned char line2 = 0;
unsigned char menu_level = 0;
unsigned char curr_line = 0;
unsigned char curr_col = 0;
unsigned char edit = 0;
String dlatHemi = "+";           //default of NW hemisphere
String glatHemi = "+";
String dlonHemi = "-";
String glonHemi = "-";  
unsigned char dlat_digits[11];   //destination lat/lon variables    
unsigned char dlon_digits[11];   
unsigned char glat_digits[11];   //gps lat/lon variables
unsigned char glon_digits[11];
char  toggle = 0;                //track current menu in the NAV menu section
float dflat, dflon;              //destination lat/lon floats
float gflat, gflon;              //gps location lat/lon floats
unsigned long gage;              //gps age
bool hemiN;                      //variable to track whether signal is in Northern Hemisphere (positive lat)
bool hemiW;                      //variable to track whether signal is in Western Hemisphere (negative lon)
// ENTER DECLARATIONS FOR ADDITIONAL VARIABLES AS NEEDED

int gpsTime = 1000;
 
 
// ENTER DECLARATIONS FOR YOUR CONVERSION FUNCTIONS

void convertFloatToStr(float in, unsigned char* arr);
float convertStrToFloat(unsigned char* in);

// Initialization Function
void setup()
{
  Serial.begin(9600);          //REPLACE THE X'S WITH YOUR BAUD RATE
  lcd.begin(8,2);              //REPLACE Y AND Z WITH THE CORRECT DIMENSION VALUES
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Welcome");
  lcd.setCursor(0,1);
  lcd.print("Obtaining fix..");
  delay(5000);                 //REPLACE THE X'S WITH A DELAY TIME TO ACCOUNT FOR COLD START
  
  //ADD CODE HERE TO OBTAIN THE INITIAL SATELLITE FIX FROM THE GPS SHIELD
  //CODE NEEDS TO DETERMINE CURRENT LOCATION AND READ IT IN AS: gflat, gflon, gage
  //REVIEW POINTERS AS NEEDED (SEE LESSON 31 SLIDES)
  bool newData = false;


  // For one second we parse GPS data and report some key values
  for (unsigned long start = millis(); millis() - start < 1000;)
  {
    while (Serial.available())
    {
      char c = Serial.read();
      //Serial.write(c); // uncomment this line if you want to see the GPS data flowing
      if (gps.encode(c)) // Did a new valid sentence come in?
        newData = true;
    }
  }

  if (newData)
  {
    gps.f_get_position(&gflat, &gflon, &gage);
  }



  if (gflat < 0) 
       { gflat = abs(gflat);
         hemiN = false; 
         glatHemi="-";}
  else { hemiN = true; 
         glatHemi="+";}     
  if (gflon < 0) 
       { gflon = abs(gflon);
         hemiW = true; 
         glonHemi="-";}
  else { hemiW = false; 
         glonHemi="+";}
  
  //PREPARE THE CURRENT GPS INFORMATION FOR DISPLAY BY 
  //CONVERTING TO THE DISPLAY FORMAT.  DISPLAY USES VARIABLES 
  //glat_digits & glon_digits OR dlat_digits & dlon_digits

  convertFloatToStr(gflat, glat_digits);
  //glat_digits[1] = 82;
  convertFloatToStr(abs(gflon), glon_digits);
  //glon_digits[1] = 83;

  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("lat:");lcd.print(glatHemi);
  lcd.print(glat_digits[0]);lcd.print(glat_digits[1]);lcd.print(glat_digits[2]);lcd.print(" ");
  lcd.print(glat_digits[4]);lcd.print(glat_digits[5]);lcd.print(" ");
  lcd.print(glat_digits[7]);lcd.print(glat_digits[8]);lcd.print(".");lcd.print(glat_digits[10]);
  lcd.setCursor(0,1);
  lcd.print("lon:");lcd.print(glonHemi);
  lcd.print(glon_digits[0]);lcd.print(glon_digits[1]);lcd.print(glon_digits[2]);lcd.print(" ");
  lcd.print(glon_digits[4]);lcd.print(glon_digits[5]);lcd.print(" ");
  lcd.print(glon_digits[7]);lcd.print(glon_digits[8]);lcd.print(".");lcd.print(glon_digits[10]);
  delay(5000);
  keypad.setRate(10);        //REPLACE V WITH YOUR KEYPAD SAMPLING RATE 
  
  //initialize variables
  menu_level = 0;
  top_menu_line = 0;
  curr_line = 0;  
  edit = 0;
  toggle = 0;  
  dflat = 41.390;            //initial target location for reset conditions
  dflon = 73.950;
  
  //CONVERT THE INITIAL TARGET LOCATIONS (dflat & dflon) TO DISPLAY VALUES (dlat_digits & dlon_digits)
  
  convertFloatToStr(dflat, dlat_digits);
  //dlat_digits[1] = 74;
  convertFloatToStr(dflon, dlon_digits);
  //dlon_digits[1] = 75;
}

/******************************************************************************************************/
// Main Program Loop
void loop()
{
  switch (menu_level)
  {
    case TOP_MENU: /**********************************************************************************/
      //display top-level menu items
      gpsTime = 50; //Setting the delay in refresh rate due to the gps searching for a signal lower.      
      lcd.clear();
      lcd.setCursor(0,0);
      lcd.print(top_menu_txt[top_menu_line]);
      if (top_menu_line == 2)
        line2 = 0;
      else
        line2 = top_menu_line + 1;
      lcd.setCursor(0,1);
      lcd.print(top_menu_txt[line2]);
      lcd.setCursor(0,0);
      lcd.blink();  
      
      //wait for keypad input
      localKey = keypad.getKey();
      if (localKey != SAMPLE_WAIT)
      {
        switch (localKey) 
        {
          case UP_KEY:
            top_menu_line--;
            if (top_menu_line < 0)
              top_menu_line = 2;
            break;
          case DOWN_KEY:
            top_menu_line++;
            if (top_menu_line > 2)
              top_menu_line = 0;
            break;
          case SELECT_KEY:
            menu_level = top_menu_line+1;
          default:;
        }
      }
      break;
    case ENTER_LAT: /**********************************************************************************/
        //display lat-level menu items using current target location
        lcd.clear();
        lcd.setCursor(0,0);
        lcd.print("Lat:"); lcd.print(dlatHemi); 
        lcd.print(dlat_digits[0]);lcd.print(dlat_digits[1]);lcd.print(dlat_digits[2]);lcd.print(' ');
        lcd.print(dlat_digits[4]);lcd.print(dlat_digits[5]);lcd.print(' ');
        lcd.print(dlat_digits[7]);lcd.print(dlat_digits[8]);lcd.print('.');lcd.print(dlat_digits[10]);
        lcd.setCursor(0,1);
        lcd.print("Done");
        lcd.setCursor(curr_col,curr_line);
        lcd.blink();
        
        //wait for keypad input
        localKey = keypad.getKey();
        if (localKey != SAMPLE_WAIT)
        {
          switch (localKey) 
          { case UP_KEY:  
              if (curr_line == 0 && edit == 0)
              { curr_line = 1;
                lcd.setCursor(0,curr_line);
                lcd.blink();
              }
              else if (curr_line == 1 && edit == 0)
              { curr_line = 0;
                lcd.setCursor(0,curr_line);
                lcd.blink();
              }
              else if (edit == 1)
              { if ((curr_col-4) == 0)
                { if (dlatHemi == "+") 
                       dlatHemi = "-";
                  else dlatHemi = "+";
                }
                else 
                { dlat_digits[curr_col-5]++;
                  if (dlat_digits[curr_col-5] > 10)
                    dlat_digits[curr_col-5] = 0;
                }
              }
              break;
            case DOWN_KEY:
              if (curr_line == 0 && edit == 0)
              {
                curr_line = 1;
                lcd.setCursor(0,curr_line);
                lcd.blink();
              }
              else if (curr_line == 1 && edit == 0)
              {
                curr_line = 0;
                lcd.setCursor(0,curr_line);
                lcd.blink();
              }
              else if (edit == 1)
              { if ((curr_col-4)==0)
                { if (dlatHemi == "+")
                       dlatHemi = "-";
                  else dlatHemi = "+";
                }
                else 
                { if (dlat_digits[curr_col-5] == 0)
                       dlat_digits[curr_col-5] = 9;
                  else dlat_digits[curr_col-5]--;                
                }
              }
              break;
            case LEFT_KEY:
              if (edit == 1)
              {
                if (curr_col <= 4)
                  curr_col = 4;
                else if (curr_col == 9)    //skip blank space in array
                  curr_col = 7;
                else if (curr_col == 12)
                  curr_col = 10;          //skip space in array
                else if (curr_col == 15)
                  curr_col = 13;          //skip period in array                  
                else
                  curr_col--;
                lcd.setCursor(curr_col, curr_line);
              }
              break;
            case RIGHT_KEY:
              if (edit == 1)
              {
                if (curr_col >= END_DISP)
                  curr_col = END_DISP;
                else if (curr_col == 7)
                  curr_col = 9;
                else if (curr_col == 10)
                  curr_col = 12;
                else if (curr_col == 13)
                  curr_col = 15;                  
                else
                  curr_col++;
                lcd.setCursor(curr_col, curr_line);
              }
              break;
            case SELECT_KEY:
              if (edit == 1 && curr_line == 0)
              {
                edit = 0;
                curr_col = 0;
                lcd.setCursor(curr_col,curr_line);
              }            
              else if (edit == 0 && curr_line == 1)
              {
                menu_level = 0;    //return to top-level menu
                edit = 0;
                curr_col = 0;
                curr_line = 0;
                dflat = convertStrToFloat(dlat_digits);
                //conv_display_f(dlat_digits, &dflat); EDIT THIS FOR PART B
              }
              else if (edit == 0 && curr_line == 0)
              {
                edit = 1;
                lcd.setCursor(4,curr_line);    //move cursor to first character in latitude value
                curr_col = 4;
              }
              break;
              
            default:;
          }
        }
        break;    //end ENTER_LAT case
     case ENTER_LONG: /*********************************************************************************/
        //display lat-level menu items using current target location
        lcd.clear();
        lcd.setCursor(0,0);
        lcd.print("Lon:"); lcd.print(dlonHemi); 
        lcd.print(dlon_digits[0]);lcd.print(dlon_digits[1]);lcd.print(dlon_digits[2]);lcd.print(" ");
        lcd.print(dlon_digits[4]);lcd.print(dlon_digits[5]);lcd.print(" ");
        lcd.print(dlon_digits[7]);lcd.print(dlon_digits[8]);lcd.print(".");lcd.print(dlon_digits[10]);
        lcd.setCursor(0,1);
        lcd.print("Done");
        lcd.setCursor(curr_col,curr_line);
        lcd.blink();
        
        //wait for keypad input
        localKey = keypad.getKey();
        if (localKey != SAMPLE_WAIT)
        {
          switch (localKey) 
          {
            case UP_KEY:
              
              if (curr_line == 0 && edit == 0)
              {
                curr_line = 1;
                lcd.setCursor(0,curr_line);
                lcd.blink();
              }
              else if (curr_line == 1 && edit == 0)
              {
                curr_line = 0;
                lcd.setCursor(0,curr_line);
                lcd.blink();
              }
              else if (edit == 1)
              { if ((curr_col-4)==0)
                { if (dlonHemi == "+")
                       dlonHemi = "-";
                  else dlonHemi = "+";   
                }
                else
                { dlon_digits[curr_col-5]++;
                  if (dlon_digits[curr_col-5] > 9)
                      dlon_digits[curr_col-5] = 0;
                }
              }             
              break;
            case DOWN_KEY:
              if (curr_line == 0 && edit == 0)
              {
                curr_line = 1;
                lcd.setCursor(0,curr_line);
                lcd.blink();
              }
              else if (curr_line == 1 && edit == 0)
              {
                curr_line = 0;
                lcd.setCursor(0,curr_line);
                lcd.blink();
              }
              else if (edit == 1)
              { if ((curr_col-4)==0)
                { if (dlonHemi == "+")
                       dlonHemi = "-";
                  else dlonHemi = "+";   
                }
                else
                { if (dlon_digits[curr_col-5] == 0)
                       dlon_digits[curr_col-5] = 9;
                  else dlon_digits[curr_col-5]--;  
                }              
              }
              break;
            case LEFT_KEY:
              if (edit == 1)
              {
                if (curr_col <= 4)
                  curr_col = 4;
                else if (curr_col == 9)
                  curr_col = 7;
                else if (curr_col == 12)
                  curr_col = 10;          //skip space
                else if (curr_col == 15)
                  curr_col = 13;
                else
                  curr_col--;
                lcd.setCursor(curr_col, curr_line);
              }
              break;
            case RIGHT_KEY:
              if (edit == 1)
              {
                if (curr_col >= END_DISP)
                  curr_col = END_DISP;
                else if (curr_col == 7)
                  curr_col = 9;
                else if (curr_col == 10)
                  curr_col = 12;          //skip space
                else if (curr_col == 13)
                  curr_col = 15;
                else
                  curr_col++;
                lcd.setCursor(curr_col, curr_line);
              }
              break;
            case SELECT_KEY:
              if (edit == 1 && curr_line == 0)
              {
                edit = 0;
                curr_col = 0;
                lcd.setCursor(curr_col,curr_line);
              }            
              else if (edit == 0 && curr_line == 1)
              {
                menu_level = 0;    //return to top-level menu
                edit = 0;
                curr_col = 0;
                curr_line = 0;
                dflon = convertStrToFloat(dlon_digits);
                //conv_display_f(dlon_digits, &dflon); EDIT THIS FOR PART B
              }
              else if (edit == 0 && curr_line == 0)
              {
                edit = 1;
                lcd.setCursor(4,curr_line);    //move cursor to first character in latitude value
                curr_col = 4;
              }
              break;
              
            default:;
          }
        }
        break;  //end enter_lon case
     case NAV: /****************************************************************************************/
        //display Navigation menu items
        gpsTime = 200;
        if (toggle == 0)    //display current location 
        {
            lcd.clear();
            lcd.setCursor(0,0);
            lcd.print("lat:");lcd.print(glatHemi);
            lcd.print(glat_digits[0]);lcd.print(glat_digits[1]);lcd.print(glat_digits[2]);lcd.print(" ");
            lcd.print(glat_digits[4]);lcd.print(glat_digits[5]);lcd.print(" ");
            lcd.print(glat_digits[7]);lcd.print(glat_digits[8]);lcd.print(".");lcd.print(glat_digits[10]);
            lcd.setCursor(0,1);
            lcd.print("lon:");lcd.print(glonHemi);
            lcd.print(glon_digits[0]);lcd.print(glon_digits[1]);lcd.print(glon_digits[2]);lcd.print(" ");
            lcd.print(glon_digits[4]);lcd.print(glon_digits[5]);lcd.print(" ");
            lcd.print(glon_digits[7]);lcd.print(glon_digits[8]);lcd.print(".");lcd.print(glon_digits[10]);
            lcd.setCursor(curr_col,curr_line);
            lcd.noBlink();
        }
        else if (toggle == 1)    //display current heading and heading to target
        {
            lcd.clear();
            lcd.setCursor(0,0);
            lcd.print("Crs: "); lcd.print(gps.f_course());      //current course heading
            lcd.setCursor(0,1); 
            lcd.print("tgt: "); 
            // Assume the destination is in the same hemisphere as the current location
            if (!hemiW and hemiN)                                        //NE Hemisphere
              lcd.print(gps.course_to (gflat, gflon, dflat, dflon));     //heading to target
            else if (hemiW and hemiN)                                    //NW Hemisphere ***Default***
              lcd.print(gps.course_to (gflat, -gflon, dflat, -dflon));   
            else if (hemiW and !hemiN)                                   //SW Hemisphere
              lcd.print(gps.course_to (-gflat, -gflon, -dflat, -dflon));
            else                                                         //SE Hemisphere
              lcd.print(gps.course_to (-gflat, gflon, -dflat, dflon));            
         }        
        else                    //display distance to target
        {   lcd.clear();
            lcd.setCursor(0,0);
            lcd.print("dist: "); lcd.print(gps.distance_between (gflat, gflon, dflat, dflon)); 
        }        
        //wait for keypad input
        localKey = keypad.getKey();
        if (localKey != SAMPLE_WAIT)
        {
          switch (localKey) 
          {
            case UP_KEY:
                toggle++;
                if (toggle > 2)
                  toggle = 0;
                break;
            case DOWN_KEY:
                toggle--;
                if (toggle < 0)
                  toggle = 2;
                break;
            case SELECT_KEY:
                menu_level = 0;    //return to top-level menu
                break;
            default: ;                      
          }  //end localKey switch
        }  //end localKey if 
        break;    //end Nav case      
  }  //end menu-level switch statement
 
  // READ NEW GPS DATA IF AVAILABLE AND UPDATE STORED VALUES
  // REMEMBER TO UPDATE HEMISPHERE INFORMATION AND USE UNSIGNED FLOAT VALUES FOR GFLAT AND GFLON
  bool newData = false;

  // For one second we parse GPS data and report some key values
  for (unsigned long start = millis(); millis() - start < gpsTime;)
  {
    while (Serial.available())
    {
      char c = Serial.read();
      // Serial.write(c); // uncomment this line if you want to see the GPS data flowing
      if (gps.encode(c)) // Did a new valid sentence come in?
        newData = true;
    }
  }

  if (newData)
  {
    gps.f_get_position(&gflat, &gflon, &gage);
    
    if (gflat < 0) 
       { gflat = abs(gflat);
         hemiN = false; 
         glatHemi="-";}
    else { hemiN = true; 
         glatHemi="+";}     
    if (gflon < 0) 
       { gflon = abs(gflon);
         hemiW = true; 
         glonHemi="-";}
    else { hemiW = false; 
         glonHemi="+";}
  }


  // CONVERT NEW GPS DATA TO DISPLAY STRINGS

	convertFloatToStr(gflat, glat_digits);
        //glat_digits[1]= 80;
	convertFloatToStr(abs(gflon), glon_digits);
        //glon_digits[1] = 81;

} //End of Main Loop

// INSERT YOUR FUNCTION TO CONVERT A FLOAT GPS SIGNAL TO A DISPLAY STRING THAT CAN BE MODIFIED
void convertFloatToStr(float in, unsigned char* arr) {
  float minutes = (in-int(in))*60;
  float seconds = (minutes-int(minutes))*60;
  arr[0] = in/100;
  arr[1] = int(in)/10%10;
  arr[2] = int(in)%10;
  arr[4] = minutes/10;
  arr[5] = int(minutes)%10;
  arr[7] = seconds/10;
  arr[8] = int(seconds)%10;
  arr[10] =int(seconds*10)%10;
}



// INSERT YOUR FUNCTION TO CONVERT DISPLAY STRINGS TO FLOATING POINT LAT/LONG
float convertStrToFloat(unsigned char* in){
  float res = 0;
  res += in[0]*100;
  res += in[1]*10;
  res += in[2];
  res += float(in[4])/6;
  res += float(in[5])/60;
  res += float(in[7])/360;
  res += float(in[8])/3600;
  res += float(in[10])/36000;
  return res;    // Hart, Michael CDT B-4 '16. Assistance given to author, verbal discussion.
}                // CDT Hart helped walk us through debugging as to why our convertStrToFloat
                 // functions was not returning a value. He pointed out that in C++ you have
                 // to return the "res" value. He also gave us the idea to use a variable to
                 // control the time the program spends on waiting for the gps in different
                 // cases. West Point, NY. 09 December 2014.
