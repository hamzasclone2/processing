int grid_height = 100;
int grid_width = 10;

int block_size = 10;
int block_height = 10;
int lines = 2;
int sw = 4;

float noise_scale = 0.05;
int noise_multiplier = 100;
int noise_dampener = 2;

int image_border_buff = 5;

int w = grid_width * block_size + grid_height * block_size + image_border_buff * block_size;
int h = grid_height * block_size/2 + grid_width * block_size/2 + (int(noise(0,0) * noise_multiplier) / noise_dampener * block_height) + image_border_buff * block_size;

int start_block_x = w/2 - grid_height/2 * block_size + grid_width/2 * block_size;
int start_block_y = h/2 - grid_height/2 * block_size/2 - grid_width/2 * block_size/2 + (int(noise(0,0) * noise_multiplier) / noise_dampener * block_height/2);

void settings(){
  size(w, h);

}

void setup(){
  background(190, 194, 249);
  fill(254, 171, 227);
  strokeWeight(sw);
  for(int g = 0; g < 100; g++){
    for(int x = 0; x < grid_height; x++){
      for(int y = 0; y < grid_width; y++){
        
        float cubes = int(noise((x+g)*noise_scale, (y+g)*noise_scale) * noise_multiplier) / noise_dampener;
        
        for(int i = 0; i < cubes; i++){
          draw_block((start_block_x + x * block_size) - y * block_size, (start_block_y + x * (block_size/2)) + y * (block_size/2) - i * block_height);
        }
      }
    }
    saveFrame("Examples/Gif/" + str(g) + ".png");
  }
}

void draw_block(float x, float y){
  
  //top
  beginShape();
  vertex(x - block_size, y);
  vertex(x, y - block_size/2);
  vertex(x + block_size, y);
  vertex(x, y + block_size/2);
  endShape(CLOSE);
  
  //left
  beginShape();
  vertex(x - block_size, y);
  vertex(x, y + block_size/2);
  vertex(x, y + block_height + block_size/2);
  vertex(x - block_size, y + block_height);
  endShape(CLOSE);
  
  float line_sep = float(block_height)/lines;
  for(int l = 0; l < lines; l++){
    line(x - block_size, y +(l * line_sep), x, y + block_size/2 + (l * line_sep));
  }
  
  //right
  beginShape();
  vertex(x + block_size, y);
  vertex(x, y + block_size/2);
  vertex(x, y + block_height + block_size/2);
  vertex(x + block_size, y + block_height);
  endShape(CLOSE);
}
