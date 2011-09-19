#include "fishMove.h"




bool thru=false;

void setup(){
	flipper.setup();
	flipper.setup();
	flipper.setup();
	flipper.setup();

}

void loop(){
    flipper.start();
  flipper.start();
  flipper.start();
  flipper.start();

  if(!thru){
    flipper.manual("RIGHT");
delay(1 *1000);
flipper.manual("LEFT");
delay(1 *1000);
flipper.manual("RIGHT");
delay(1 *1000);
flipper.manual("LEFT");
delay(1 *1000);

  }
    
  
  
  

  thru=true;
}
