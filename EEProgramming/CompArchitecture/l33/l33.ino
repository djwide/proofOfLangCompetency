//l33

int sensorPin=0;
float inputV= 3.3;

void setup()
{
 Serial.begin(9600); 
 analogReference(inputV);
}

void loop()
{
  int reading= analogRead(sensorPin);
  float voltage= reading*inputV/1024.0;
  Serial.print(voltage);
  Serial.println(" volts");
  float tempC= (voltage-.5)*100;
  Serial.print(tempC);
  Serial.println(" deg C");
  float tempF= (tempC*9/5)+32;
  Serial.print(tempF);
  Serial.println(" deg F");
  delay(1000);
}
