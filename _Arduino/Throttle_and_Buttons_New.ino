#include <math.h>
#define OUR_VAR 'R'

int throttlePin = A0;
int leftButtonPin = 10;
int rightButtonPin = 8;
int leftFan = 2;
int middleFan = 3;
int rightFan = 4;

int int_throttle_val = 0;
int mapped_throttle_val = 0;
int leftButton_val = 0;
int rightButton_val = 0;
int leftFan_val = 0;
int middleFan_val = 0;
int rightFan_val = 0;

int last_throttle_val = 0;

void setup() 
{
  // Try 9600, 19200, 38400, 57600, 115200
  Serial.begin(9600);
  pinMode(throttlePin, INPUT);
  pinMode(leftButtonPin, INPUT);
  pinMode(rightButtonPin, INPUT);
  pinMode(leftFan, OUTPUT);
  pinMode(middleFan, OUTPUT);
  pinMode(rightFan, OUTPUT);
  digitalWrite(leftFan, HIGH);
  digitalWrite(middleFan, HIGH);
  digitalWrite(rightFan, HIGH);
}

void SendLeftButtonData()
{
    leftButton_val = digitalRead(leftButtonPin);

     // Formatting and printing right button data within serial port
    Serial.print(OUR_VAR);
    Serial.print(!leftButton_val, DEC);
    Serial.print (":");
}

void SendThrottleData()
{
    int_throttle_val = analogRead(throttlePin);
  
    if ((int_throttle_val >= 200) || (int_throttle_val <= 850))
    {
      // Map the throttle data to a Unity-useable range
      mapped_throttle_val = map(int_throttle_val, 200, 850, -360, 360);

      if ((mapped_throttle_val > -360) || (mapped_throttle_val < 360))
      {
        // Formatting and printing throttle data within serial port 
        Serial.print (mapped_throttle_val, DEC); 
        Serial.print (":"); 
        last_throttle_val = mapped_throttle_val;
      }

      else
      {
        Serial.print (last_throttle_val, DEC); 
        Serial.print (":");
        last_throttle_val = mapped_throttle_val;
      }
    }
}

void SendRightButtonData()
{
    rightButton_val = digitalRead(rightButtonPin);

     // Formatting and printing right button data within serial port
    Serial.print(rightButton_val, DEC);
    Serial.println("");
}

void loop() 
{
  SendLeftButtonData();
  SendThrottleData();
  SendRightButtonData();
  delay(16.6); //Delay to match 60 updates per second.
}
