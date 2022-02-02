float noise_scale = 0.02;

void setup(){
  size(1000, 750);
  
  background(100, 132, 158);
  
  for(int x = 0; x < 1000; x++){
    for(int y = 0; y < 750; y++){
      float n = noise(x * noise_scale, y * noise_scale);
      if(n > 0.5){
        stroke(204, 192, 155);
      }
      if(n > 0.54){
        stroke(96, 117, 94);
      }
      if(n > 0.7){
        stroke(150, 150, 150);
      }
      if(n > 0.5){
        point(x,y);
      }
    }
  }
}
