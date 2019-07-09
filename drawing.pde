void setup() {
  fullScreen(P2D);
  background(255);
}

void draw() {
  //stroke
   strokeWeight(1);
  
  //rectangle for clear
  fill(255);
  rect(80,80,80,80);
  
  //rectangle for changing background color in red
  fill(255, 0, 0);
  rect(80, 180, 80, 80);
  
  //rectangle for changing background color in green
  fill(0, 255, 0);
  rect(80, 280, 80, 80);
  
  //rectangle for changing background color in blue
  fill(0, 0, 255);
  rect(80, 380, 80, 80);
  
  //text
  fill(0);
  textSize(52);
  text("Clear",170,140);
  
  //text to red line
  fill(255, 0, 0);
  textSize(52);
  text("Red",170,240);
  
  //text to green line
  fill(0, 255, 0);
  textSize(52);
  text("Green",170,340);
  
  //text to blue line
  fill(0, 0, 255);
  textSize(52);
  text("Blue", 170, 440);
  
   //stroke
   strokeWeight(5);
   
  //clear the screen
  if(mouseX>80 && mouseX<310 && mouseY>80 && mouseY<80+80){
    saveFrame("img-##.png"); 
    //for Android
    //saveFrame(android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_PICTURES).getAbsolutePath() + "SD card/img-#####.png");
    stroke(0);
    background(255); 
  }
  
  //change line color in red
  if(mouseX>80 && mouseX<280 && mouseY>180 && mouseY<180+80){
    stroke(255, 0, 0);
         
  }
  
  //change line color in green
  if(mouseX>80 && mouseX<330 && mouseY>280 && mouseY<280+80){
    stroke(0, 255, 0);
         
  }
  
  //change line color in blue
  if(mouseX>80 && mouseX<300 && mouseY>380 && mouseY<380+80){
     stroke(0, 0, 255);
     
  }
 
  if (mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}