int wrigPin=11;
bool wriggle=false;
int wrigSpeed=0;
String wrigString;




#include <Wire.h>
#include <sounds.h>

bool thru=false;

void setup(){
	pinMode(wrigPin,OUTPUT);
	pinMode(2,INPUT);
	
	Sound.setup();

}

void loop(){
  
  if(!thru){
    while(1){ 	wrigString="SLOW";
	if(wrigString.equals("FAST")) wrigSpeed = 255;
	else if(wrigString.equals("SLOW")) wrigSpeed = 120;
	else wrigSpeed= 0;
	
	analogWrite(wrigPin,wrigSpeed); ;
	if(digitalRead(2)){
		wrigString="STOP";
		if(wrigString.equals("FAST")) wrigSpeed = 255;
		else if(wrigString.equals("SLOW")) wrigSpeed = 120;
		else wrigSpeed= 0;
		
		analogWrite(wrigPin,wrigSpeed); ;
		Sound.play(1); ;
		delay(2 *1000);
	}
}

  }
  
  thru=true;
}
