/*
Sensor Graphing Sketch
 
 This sketch takes raw bytes from the serial port at 9600 baud and graphs them.
 
 Created 20 April 2005
 Updated 5 August 2008
 by Tom Igoe
 Updated 2 November 2009
 by Rob Faludi
 */

import processing.serial.*;

Serial myPort; // The serial port
int graphXPos = 1; // the horizontal position of the graph:

void setup () {
  size(400, 300); // window size


  // List all the available serial ports
  println(Serial.list());
  // I know that the fisrt port in the serial list on my mac
  // is usually my Arduino module, so I open Serial.list()[0].
  // Open whatever port is the one you're using.
  try { // attempt to open this port
    myPort = new Serial(this, Serial.list()[0], 9600);
  }
  // if the port cannot be opened, print an error message, then quit
  catch (Exception e) {
    println("** Error selecting serial port! **");
    println(" Have you attached your Arduino? Does your code specify the right port?");
    exit();
  }
  // set inital background:
  background(48,31,65);
}
void draw () {
  // nothing happens in draw. It all happens in SerialEvent()
}

void serialEvent (Serial myPort) {
  // get the byte:
  int inByte = myPort.read();
  // print it:
  println(inByte);
  // set the drawing color. Pick a pretty color:
  stroke(123,128,158);
  // draw the line:
  line(graphXPos, height, graphXPos, height - inByte);

  // at the edge of the screen, go back to the beginning:
  if (graphXPos >= width) {
    graphXPos = 0;
    // clear the screen:
    background(48,31,65);
  }
  else {
    // increment the horizontal position for the next reading:
    graphXPos++;
  }
}

