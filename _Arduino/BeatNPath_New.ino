#include <Wire.h>

char receivedChar;
const int actPotPin = A3;
int readActuatorPosition = 0;
const uint8_t smcDeviceNumber = 13;

const byte emergencyStopButton = 2; // Pin on the Arduino that the eStop button is plugged into
volatile byte eStopState = LOW; // Sets the state of the eStop to non-emergency

int readActPos = 0;
volatile int breaker = 0;

void setup() {
  Wire.begin(); // Used for motor controller setup
  exitSafeStart(); 
  Serial.begin(19200);
  pinMode(actPotPin, INPUT);
  pinMode(emergencyStopButton, INPUT);
  attachInterrupt(digitalPinToInterrupt(emergencyStopButton), EmergencyStopCheck, CHANGE);
}

// Array of actutator speeds for Beat N' Path
// Upper Bound: 3200 (Max Speed of Pitch Down)
// No Speed: 0
// Lower Bound: -3200 (Max Speed of Pitch Up)

int mappedActuatorVelocity[] = {
50,
125,
150,
200,
250,
275,
350,
375, // Positive Values are Pitching Down
425,
375,
350,
300,
250,
175,
125,
75,
-10,
0,
0,
-225,
-375,
-525,
-650,
-700,
-825,  // Negative Values are Pitching Up
-900,
-825,
-700,
-650,
-525,
-400,
-350,
-300,
-250,
-112,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
75,
150,
175,
200,
250,
275,
300,
325,
350,
375,
425,
450,
475,
500,
525,
600,
650,
700,
650,
600,
525,
500,
475,
450,
425,
375,
350,
325,
175, 
50,
-150,
-350,
-500,
-650,
-700,
-750,
-800,
-850,
-800,
-750,
-650,
-450,
-250,
-200,
-250,
-375,
-500,
-675,
-750,
-650,
-500,
-375
-275,
-75,
-20,
10,
30,
40,
50,
-10,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
45,
-90,
-180,
-250,
-325,
-400,
-450,
-500,
-550,
-550,
-550,
-500,
-450,
-400,
-325,
-250,
-190,
-90,
0,
0,
0,
0,
0,
0,
0,
45,
150,
250,
325,
490,
585,
700,
585,
490,
325,
250,
150,
45,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
50,
100,
150,
200,
250,
325,
400,
0,
0,
0,
0,
0,
0,
50,
80,
120,
180,
200,
250,
300,
325,
350,
415,
450,
500,
450,
415,
350,
275,
200,
175,
100,
-30,
-50,
-90,
-120,
-170,
-190,
-225,
-275,
-325,
-450,
-520,
-580,
-580,
-625,
-680,
-725,
-780,
-825,
-780,
-725,
-680,
-625,
-580,
-580,
-520,
-450,
-325,
-275,
-225,
-170,
-120,
-90,
0,
0,
0,
0,
0,
0,
150,
275,
350,
400,
475,
525,
660,
780,
850,
780,
660,
525,
475,
400,
350,
275,
150,
0,
0,
0,
0,
-80,
-175,
-250,
-350,
-500,
-350,
-250,
-175,
-80,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
30,
50,
70,
90,
110,
150,
230,
250,
300,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
-250,
-200,
-150,
-125,
-100,
-50,
-25,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0
};

////                             
////                             
////                            
// Mandatory Actuator Functions ////
////
////              
////

// Required to allow motors to move.
// Must be called when controller restarts and after any error.
void exitSafeStart()
{
  Wire.beginTransmission(smcDeviceNumber);
  Wire.write(0x83);  // Exit safe start
  Wire.endTransmission();
}
 
void setMotorSpeed(int16_t speed)
{
  uint8_t cmd = 0x85;  // Motor forward
  if (speed < 0)
  {
    cmd = 0x86;  // Motor reverse
    speed = -speed;
  }
  Wire.beginTransmission(smcDeviceNumber);
  Wire.write(cmd);
  Wire.write(speed & 0x1F);
  Wire.write(speed >> 5 & 0x7F);
  Wire.endTransmission();
}
 
uint16_t readUpTime()
{
  Wire.beginTransmission(smcDeviceNumber);
  Wire.write(0xA1);  // Command: Get variable
  Wire.write(28);    // Variable ID: Up time (low)
  Wire.endTransmission();
  Wire.requestFrom(smcDeviceNumber, (uint8_t)2);
  uint16_t upTime = Wire.read();
  upTime |= Wire.read() << 8;
  return upTime;
}

// Emergency Stop Function
int EmergencyStopCheck()
{
  //setMotorSpeed(0);
  breaker = 1;
}

//New Function and value for error correction safety RJ changes
int previous = 451;
int threshold = 10;

void extraneousDistance(){
  int readActPos = analogRead(actPotPin);
  //Lower Limit Check if its over the limit and not extraneous
  if (abs(previous - readActPos) < threshold && readActPos <= 88){
    while(true){
      setMotorSpeed(0);
    }
  }
    
  else if (abs(previous - readActPos) < threshold && readActPos >= 980){
    while(true){
      setMotorSpeed(0);
    }
  }
  else{
    previous = readActPos;
  }
}

void BeantNPath()
{
  while(breaker == 0)
  {
  if (Serial.available() > 0)
  {
    receivedChar = Serial.read();
    if (receivedChar == 'C')
    {
      for(int i = 0; i < 475; i++)
      {
        if (breaker == 1)
        {
          break;
        }
        
        else
        {
        setMotorSpeed(mappedActuatorVelocity[i]);
        //Changed delay to include functions during delay RJ changes
        //unsigned long previousMilli = millis();
       //unsigned long newMilli = previousMilli + 1;
       // while ((newMilli - previousMilli) > 250){
         // newMilli = millis();
          //extraneousDistance();
          delay(250);
        }
        }
      }
      int breaker = 1;
    }
    setMotorSpeed(0);
  }
}


// Initial Function to send Acutator to Neutral Position
void SetToNeutral()
{ 
  if (breaker == 0)
  {  
  for(int motorSet = 0; motorSet <= 5; motorSet++)
  {
    int readActPos = analogRead(actPotPin);
    //Serial.println(readActPos);
    
    if (readActPos >= 500)
    {
      while(readActPos >= 500)
      {
        setMotorSpeed(900);
        delay(10);
        readActPos = analogRead(actPotPin);
      }
      setMotorSpeed(0);
    }
    
    else if (readActPos < 500)
    {
      while(readActPos < 500)
      {
        setMotorSpeed(-900);
        delay(10);
        readActPos = analogRead(actPotPin);
      }
      setMotorSpeed(0);
    }
    delay(1500);
  }
  }
    setMotorSpeed(0);
}

void loop() {
  SetToNeutral();
  BeantNPath();
}
