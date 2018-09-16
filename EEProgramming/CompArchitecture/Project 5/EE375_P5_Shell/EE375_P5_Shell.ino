//EE375 Project 5 Shell
//Created by: LTC Paul Maxwell and MAJ Julianna Rodriguez
//Modified by:  Cadet Colin Hwang, Cadet David Weidman
//Last Edited: 20150406

#include <LiquidCrystal.h>
#include <DFR_Key.h>
#include <TinyGPS.h>

//Constant Definitions
#define  TOP_MENU    0
#define  ENTER_LAT   10
#define  ENTER_LONG  2
#define  NAV         3
#define  END_DISP    15

// Pin numbers taken from http://www.arduino.cc/en/Tutorial/LiquidCrystal
LiquidCrystal lcd(8, 9, 4, 5, 6, 7); //REPLACE LETTERS a-f WITH THE PINS YOU WILL USE IN YOUR DESIGN
TinyGPS gps;                         //Instance of the TinyGPS Class
DFR_Key keypad;                      //Instance of the DFR_Key Class

//variables for current positioning of lines and columns on the LCD
String top_menu_txt[3] = {"1. Enter Lat.", "2. Enter Long.", "3. Navigate"};
unsigned char localKey = 0; char top_menu_line = 0; 
unsigned char line2 = 0; unsigned char menu_level = 0;
unsigned char curr_line = 0; unsigned char curr_col = 0;
char  toggle = 0; unsigned char edit = 0;

//variables for GPS location and destination location
String dlatHemi = "+"; String dlonHemi = "-";
String glatHemi = "+"; String glonHemi = "-";  
bool hemiN; bool hemiW;          //Northern Hemisphere (positive lat), Western Hemisphere (negative lon)                      
unsigned char dlat_digits[11]; unsigned char dlon_digits[11];   //destination lat/lon variables    
unsigned char glat_digits[11]; unsigned char glon_digits[11];   //gps lat/lon variables
float dflat, dflon;              //destination lat/lon floats
float gflat, gflon;              //gps location lat/lon floats
unsigned long gage;              //gps age

// IF YOU WILL USE ADDITIONAL GLOBAL VARIABLES, DECLARE THEM HERE
bool newData = false;
unsigned short sentences, failed; 
unsigned long chars;

// ENTER DECLARATIONS FOR YOUR CONVERSION FUNCTIONS




void setup()
{ 
  Serial.begin(9600);          // Set Baud Rate
  //INITIALIZE YOUR LCD AND PRINT A WELCOME MESSAGE
  lcd.begin(16, 2);
  lcd.print("INITIALIZING GPS...");
  
  
  delay(1000);                 //REPLACE THE X'S WITH A DELAY TIME TO ACCOUNT FOR COLD START
  
  //ADD CODE HERE TO OBTAIN THE INITIAL SATELLITE FIX FROM THE GPS SHIELD
  //CODE NEEDS TO DETERMINE CURRENT LOCATION AND READ IT IN AS: gflat, gflon, gage
  


  //Read signs as hemispheres then change the floats to their absolute values
  setHemisphere(&gflat, &gflon, &hemiN, &hemiW, &glatHemi, &glonHemi);    
   
  //PREPARE THE CURRENT GPS INFORMATION FOR DISPLAY BY CONVERTING TO THE DISPLAY FORMAT.  
  //DISPLAY USES VARIABLES glat_digits & glon_digits; USE ABSOLUTE VALUES AS INPUTS TO 
  //YOUR DISPLAY CONVERSION FUNCTIONS


   
  lcd.clear();
  lcd.setCursor(0,0); lcd.print("lat:"); lcd.print(glatHemi); printDMS(glat_digits);
  lcd.setCursor(0,1); lcd.print("lon:"); lcd.print(glonHemi); printDMS(glon_digits);
  delay(1000);
  keypad.setRate(1);      //REPLACE V WITH YOUR KEYPAD SAMPLING RATE (once every 'V' ms)
  
  //initialize variables for menu loop
  menu_level = 0; top_menu_line = 0; curr_line = 0; edit = 0; toggle = 0;
  //initialize destination location for reset conditions
  dflat = 41.3947; dflon = -73.9569;     
  
  //CONVERT THE INITIAL DESTINATION LOCATION TO DISPLAY VALUES; USE ABSOLUTE VALUES AS 
  //INPUTS TO YOUR DISPLAY CONVERSION FUNCTIONS



}

void loop()
{ switch (menu_level)
  { case TOP_MENU:
      //display top-level menu items
      lcd.clear();
      lcd.setCursor(0,0); lcd.print(top_menu_txt[top_menu_line]);
      if (top_menu_line == 2)
        line2 = 0;
      else
        line2 = top_menu_line + 1;
      lcd.setCursor(0,1); lcd.print(top_menu_txt[line2]); 
      lcd.setCursor(0,0); lcd.blink();  
      
      //wait for keypad input
      localKey = keypad.getKey();
      if (localKey != SAMPLE_WAIT)
      { switch (localKey) 
        { case UP_KEY:
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
    case ENTER_LAT:
        //display lat-level menu items using current destination location
        lcd.clear();
        lcd.setCursor(0,0); lcd.print("Lat:"); lcd.print(dlatHemi); printDMS(dlat_digits);
        lcd.setCursor(0,1); lcd.print("Done");
        lcd.setCursor(curr_col,curr_line); lcd.blink();
        
        //wait for keypad input
        localKey = keypad.getKey();
        if (localKey != SAMPLE_WAIT)
        { switch (localKey) 
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
              { if ((curr_col-4)==0)
                { if (dlatHemi == "+")
                       dlatHemi = "-";
                  else dlatHemi = "+";   
                }
                else
                { dlat_digits[curr_col-5]++;
                  if (dlat_digits[curr_col-5] > 9)
                      dlat_digits[curr_col-5] = 0;
                }
              }             
              break;
            case DOWN_KEY:
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
              { if (curr_col <= 4)
                  curr_col = 4;
                else if (curr_col == 9)    //skip degree in array
                  curr_col = 7;
                else if (curr_col == 12)
                  curr_col = 10;          //skip minutes in array
                else if (curr_col == 15)
                  curr_col = 13;          //skip period in array                  
                else
                  curr_col--;
                lcd.setCursor(curr_col, curr_line);
              }
              break;
            case RIGHT_KEY:
              if (edit == 1)
              { if (curr_col >= END_DISP)
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
              { edit = 0;
                curr_col = 0;
                lcd.setCursor(curr_col,curr_line);
              }            
              else if (edit == 0 && curr_line == 1)
              { menu_level = 0;    //return to top-level menu
                edit = 0;
                curr_col = 0;
                curr_line = 0;
                //CONVERT THE NEW DESTINATION LATITUDE TO DISPLAY VALUES



              }
              else if (edit == 0 && curr_line == 0)
              { edit = 1;
                lcd.setCursor(4,curr_line);    //move cursor to first character in latitude value
                curr_col = 4;
              }
              break;
            default: ;
          }
        }
        break;    //end ENTER_LAT case
     case ENTER_LONG:
        //display lat-level menu items using current destination location
        lcd.clear();
        lcd.setCursor(0,0); lcd.print("Lon:"); lcd.print(dlonHemi); printDMS(dlon_digits);
        lcd.setCursor(0,1); lcd.print("Done");
        lcd.setCursor(curr_col,curr_line); lcd.blink();
        
        //wait for keypad input
        localKey = keypad.getKey();
        if (localKey != SAMPLE_WAIT)
        { switch (localKey) 
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
              { if (curr_col <= 4)
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
              { if (curr_col >= END_DISP)
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
              { edit = 0;
                curr_col = 0;
                lcd.setCursor(curr_col,curr_line);
              }            
              else if (edit == 0 && curr_line == 1)
              { menu_level = 0;    //return to top-level menu
                edit = 0;
                curr_col = 0;
                curr_line = 0;
                //CONVERT THE NEW DESTINATION LONGITUDE TO DISPLAY VALUES


            
              }
              else if (edit == 0 && curr_line == 0)
              { edit = 1;
                lcd.setCursor(4,curr_line);    //move cursor to first character in latitude value
                curr_col = 4;
              }
              break;
            default: ;
          }
        }
        break;  //end enter_lon case
     case NAV:
        //display Navigation menu items
        if (toggle == 0)    //display current location 
        { lcd.setCursor(0,0); lcd.print("lat:"); lcd.print(glatHemi); printDMS(glat_digits);
          lcd.setCursor(0,1); lcd.print("lon:"); lcd.print(glonHemi); printDMS(glon_digits);
          lcd.setCursor(curr_col,curr_line);
          lcd.noBlink();
        }
        else if (toggle == 1)    //display current heading and heading to destination
        { lcd.clear();
          //print current course heading
          lcd.setCursor(0,0); lcd.print("Curr: "); lcd.print(gps.f_course());lcd.write(0xDF); 
          //print destination course heading
          lcd.setCursor(0,1); lcd.print("Dest: "); 
          if (!hemiW and hemiN)                                        //NE Hemisphere
            lcd.print(gps.course_to (gflat, gflon, dflat, dflon));     //heading to destination
          else if (hemiW and hemiN)                                    //NW Hemisphere ***Default***
            lcd.print(gps.course_to (gflat, -gflon, dflat, -dflon));   
          else if (hemiW and !hemiN)                                   //SW Hemisphere
            lcd.print(gps.course_to (-gflat, -gflon, -dflat, -dflon));
          else                                                         //SE Hemisphere
            lcd.print(gps.course_to (-gflat, gflon, -dflat, dflon));            
          lcd.write(0xDF);           
         }             

        else                    
        { lcd.clear();
          lcd.setCursor(0,0);
          lcd.print("dist: "); 
          //DISPLAY DISTANCE TO DESTINATION (IN METERS) ON THE LCD
          
          
          
          lcd.print("m");
        }
                
        //wait for keypad input
        localKey = keypad.getKey();
        if (localKey != SAMPLE_WAIT)
        { switch (localKey) 
          { case UP_KEY:
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
  
  //READ NEW GPS DATA IF AVAILABLE AND UPDATE CURRENT LOCATION FLOAT AND DISPLAY VALUES
  //REMEMBER TO USE THE setHemisphere FUNCTION TO ACCOUNT FOR THE HEMISPHERE AND 
  //REMOVE THE SIGN FROM YOUR FLOAT NUMBERS PRIOR TO CONVERTING TO DISPLAY VALUES
  for (unsigned long start = millis(); millis() - start < 100;)
  {
    while (Serial.available())
    {
      char c = Serial.read();      
      if (gps.encode(c)) { // If new valid data came in
//        lcd.print("blabadobop");
        gps.f_get_position(&gflat, &gflon, &gage);
        setHemisphere(&gflat, &gflon, &hemiN, &hemiW, &glatHemi, &glonHemi); 
        convertToDisplay(gflat,glat_digits);  
        convertToDisplay(gflon,glon_digits);
        
        //delay(3000);
      }
    }
  }
}

// Function to print a display array in Degrees,Minutes,Seconds to the LCD
void printDMS(unsigned char charArray[11])
{
  lcd.print(charArray[0]);lcd.print(charArray[1]);lcd.print(charArray[2]);lcd.write(0xDF);
  lcd.print(charArray[4]);lcd.print(charArray[5]);lcd.write(0x27);
  lcd.print(charArray[7]);lcd.print(charArray[8]);lcd.print(".");lcd.print(charArray[10]);
}

// Function to set the hemisphere from the current GPS signal
// Figures out what hemisphere the signal comes from
void setHemisphere(float *gflat, float *gflon, bool *hemiN, bool *hemiW, String *glatHemi, String *glonHemi)
{
  if (*gflat < 0) 
  { *gflat = abs(*gflat);
    *hemiN = false; 
    *glatHemi="-";
  }
  else
  { *hemiN = true; 
    *glatHemi="+";
  }     
  if (*gflon < 0) 
  { *gflon = abs(*gflon);
    *hemiW = true; 
    *glonHemi="-";
  }
  else 
  { *hemiW = false; 
    *glonHemi="+";
  }
}
  
// WRITE YOUR FUNCTION BELOW TO CONVERT A FLOAT DECIMAL DEGREE 
// FROM A GPS SIGNAL TO A DISPLAY ARRAY
void convertToDisplay(float coord, unsigned char digs[11])
// Credit to Cadet Sung, Eva. The degInt / minInt / secInt variables came from her code. 21 March 2015.
{   
  // Change the input to display arrays in the form ±ddd°mm'ss.s where d is integer degrees, m is integer minutes, and s is decimal seconds.
  float deg, mins, sec;
  int degInt, minsInt, secInt;
  degInt = floor(coord); // Computes the largest integer value not greater than arg. 

  digs[0] = degInt/100; // Fill in one digit at a time
  digs[1] = (degInt/10)%100;
  digs[2] = degInt%10;
  
  mins = (coord-degInt)*60; // Calculate minutes part of the array
  minsInt = floor(mins);
  digs[4] = minsInt/10;
  digs[5] = minsInt%10;
  
  sec = (mins-minsInt)*600;
  secInt = floor(sec); // will give up to tenths of seconds
  digs[7] = secInt/100;
  digs[8] = (secInt%100)/10;
  digs[10] = secInt%10;
}
// WRITE YOUR FUNCTION BELOW TO CONVERT A DISPLAY ARRAY TO 
// A FLOATING POINT DECIMAL DEGREE NUMBER






