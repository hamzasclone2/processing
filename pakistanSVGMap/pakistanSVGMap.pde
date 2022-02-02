PShape pakistan;
PShape islamabad;
PShape punjab;
PShape sindh;
PShape balochistan;
PShape khyber1;
PShape khyber2;
PShape kashmir;
PShape gilgitBaltistan;

void setup() {
 size(640, 640);
 pakistan = loadShape("pakistan.svg");
 islamabad = pakistan.getChild("PK-IS");
 punjab = pakistan.getChild("PK-PB");
 sindh = pakistan.getChild("PK-SD");
 balochistan = pakistan.getChild("PK-BA");
 khyber1 = pakistan.getChild("PK-KP");
 khyber2 = pakistan.getChild("PK-TA");
 kashmir = pakistan.getChild("PK-JK");
 gilgitBaltistan = pakistan.getChild("PK-GB");
}

void draw() {
 background(0);
 
 shape(pakistan, 0, 0);
 
 islamabad.disableStyle();
 fill(255, 102, 102);
 noStroke();
 shape(islamabad, 0, 0);
 
 punjab.disableStyle();
 fill(255, 255, 153);
 noStroke();
 shape(punjab, 0, 0);
 
 sindh.disableStyle();
 fill(255, 178, 102);
 noStroke();
 shape(sindh, 0, 0);

 
 balochistan.disableStyle();
 fill(178, 102, 255);
 noStroke();
 shape(balochistan,0,0);
 
 khyber1.disableStyle();
 fill(102, 178, 255);
 stroke(102, 178, 255);
 shape(khyber1, 0, 0);
 
 khyber2.disableStyle();
 fill(102, 178, 255);
 stroke(102, 178, 255);
 shape(khyber2, 0, 0);
 
 kashmir.disableStyle();
 fill(102, 255, 255);
 noStroke();
 shape(kashmir, 0, 0);
 
 gilgitBaltistan.disableStyle();
 fill(178, 255, 102);
 noStroke();
 shape(gilgitBaltistan, 0, 0);
}
