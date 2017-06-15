// THIS CODE HAS ALL EIGHT DRAWING FUNCTIONS AND OUTPUTS AN IMAGE WITH ALL OF THEM. THE CURVES ARE NAMED ACCORDING TO WHICH QUADRANT THE SEGMENT WOULD FALL IN IF THE CIRCLE WAS DRAWN AROUND THE ORIGIN OF A COORDINATE PLANE. 

int radius; 
int[] res = new int[2];

void setup() {
  // Create a 500X700 pixel canvas for the sake of demonstrating the paths
  size(500, 700);
  // use a black background.
  background(0);
  // use white for drawings points.
  stroke(255);
  // call the draw curve function starting on position 200,300
  radius = 100; // radius is 100 pixels
  
  res = draw_horizontal(50,450,radius);
  res = draw_vertical(res[0],res[1],radius);
  res = draw_diagUp(res[0],res[1],radius);
  res = draw_diagDown(res[0],res[1],radius);
  res = draw_curve1(res[0],res[1],radius);
  res = draw_curve2(res[0],res[1],radius);
  res = draw_curve3(res[0],res[1],radius);
  res = draw_curve4(res[0],res[1],radius);
  
}


// The function takes as input the
// starting coordinates, it returns the end coordinates, and it draw a curve inside.
int[] draw_curve4(int initial_x, int initial_y, int radius) {
        int current_x = initial_x;
        float current_y = initial_y;
        for (int i=0; i<radius; i+=1){
                current_x+=1;
                current_y=initial_y+sqrt(pow(radius,2)-pow(i,2))-radius;
                point(current_x, current_y);
        }
        int[] finalposition = new int[2];
        finalposition[0] = current_x;
        finalposition[1] = int(current_y);
        return finalposition;
}

int[] draw_curve3(int initial_x, int initial_y, int radius) {
        int current_x = initial_x;
        float current_y = initial_y;
        for (int i=0; i<radius; i+=1){
                current_x-=1;
                current_y=initial_y+sqrt(pow(radius,2)-pow(i,2))-radius;
                point(current_x, current_y);
        }
        int[] finalposition = new int[2];
        finalposition[0] = current_x;
        finalposition[1] = int(current_y);
        return finalposition;
}

int[] draw_curve1(int initial_x, int initial_y, int radius) {
        int current_x = initial_x;
        float current_y = initial_y;
        for (int i=0; i<radius; i+=1){
                current_x+=1;
                current_y=initial_y-sqrt(pow(radius,2)-pow(i,2))+radius;
                point(current_x, current_y);
        }
        int[] finalposition = new int[2];
        finalposition[0] = current_x;
        finalposition[1] = int(current_y);
        return finalposition;
}

int[] draw_curve2(int initial_x, int initial_y, int radius) {
        int current_x = initial_x;
        float current_y = initial_y;
        for (int i=0; i<radius; i+=1){
                current_x-=1;
                current_y=initial_y-sqrt(pow(radius,2)-pow(i,2))+radius;
                point(current_x, current_y);
        }
        int[] finalposition = new int[2];
        finalposition[0] = current_x;
        finalposition[1] = int(current_y);
        return finalposition;
}

// The function takes as input the starting coordinates and length and returns end coordinates and draws line inside the function
int[] draw_vertical(int initial_x, int initial_y, int length) {
        int current_y = initial_y;
        for (int i=0; i<=length; i+=1){
                current_y-=1;
                point(initial_x, current_y);
        }
        int[] finalposition = new int[2];
        finalposition[0] = initial_x;
        finalposition[1] = current_y;
        return finalposition;
}

// The function takes as input the starting coordinates and length and returns end coordinates and draws line inside the function
int[] draw_horizontal(int initial_x, int initial_y, int length) {
        int current_x = initial_x;
        for (int i=0; i<=length; i+=1){
                current_x+=1;
                point(current_x, initial_y);
        }
        int[] finalposition = new int[2];
        finalposition[0] = current_x;
        finalposition[1] = initial_y;
        return finalposition;
}

// The function takes as input the starting coordinates and length and returns end coordinates and draws line inside the function
int[] draw_diagDown(int initial_x, int initial_y, int length) {
        int current_x = initial_x;
        int current_y = initial_y;
        for (int i=0; i<=length; i+=1){
                current_x+=1;
                current_y+=1;
                point(current_x, current_y);
        }
        int[] finalposition = new int[2];
        finalposition[0] = current_x;
        finalposition[1] = current_y;
        return finalposition;
}

// The function takes as input the starting coordinates and length and returns end coordinates and draws line inside the function
int[] draw_diagUp(int initial_x, int initial_y, int length) {
        int current_x = initial_x;
        int current_y = initial_y;
        for (int i=0; i<=length; i+=1){
                current_x+=1;
                current_y-=1;
                point(current_x, current_y);
        }
        int[] finalposition = new int[2];
        finalposition[0] = current_x;
        finalposition[1] = current_y;
        return finalposition;
}