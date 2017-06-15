// THIS IS JJE'S ORIGINAL CODE MODIFIED SO THAT IT DRAWS. NOTE THAT THE CURVE TAPERS OFF...NOT SURE IF THIS WILL BE A PROBLEM

void setup() {
  // Create a 640x400 pixel canvas
  size(640, 400);
  // use a black background.
  background(0);
  // use white for drawings points.
  stroke(255);
  // call the draw curve function starting on position 200,300
  int radius = 100; // radius is 100 pixels
  draw_curve(200,200,radius);
  
}

int[] draw_curve(int initial_x, int initial_y, int radius) {
        int current_x = initial_x;
        float current_y = initial_y; //made float so that it didn't give me trouble with data type complaint
        for (int i=0; i<2*radius; i+=1){
                current_x+=1;
                current_y=initial_y+sqrt(pow(radius,2)-pow(i,2))-radius;
                point(current_x, current_y);
        }
        int[] finalposition = new int[2];
        finalposition[0] = current_x;
        finalposition[1] = int (current_y); //made int
        return finalposition;
}