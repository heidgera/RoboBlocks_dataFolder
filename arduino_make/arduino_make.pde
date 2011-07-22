#include "fishMove.h"


bool thru=false;

void setup(){
	flipper.setup();
	flipper.setup();

}

void loop(){
    flipper.start();
  flipper.start();

  if(!thru){
    for(int i=0; i<5; i++){	flipper.manual("LEFT");
	delay(1 *1000);
	flipper.manual("RIGHT");
	delay(0.5 *1000);
}

  }
    
  

  thru=true;
}
