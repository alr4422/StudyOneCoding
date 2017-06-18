//Draws all paths to one sketchpad without saving them as inidvudal files
int radius; 
int[] res = new int[2];
int initial_x=400;
int initial_y=350;

void setup() {
  // Create a 500X700 pixel canvas for the sake of demonstrating the paths
  size(800, 800);
  // use a black background.
  background(0);
  // use white for drawings points.
  stroke(255);
  // call the draw curve function starting on position 200,300
  radius = 50; // radius is 100 pixels
  
// This goes in the setup() function:

for (int FirstCurveId=0; FirstCurveId<8; FirstCurveId++){
  for (int SecondCurveId=0; SecondCurveId<8; SecondCurveId++){
    for (int ThirdCurveId=0; ThirdCurveId<8; ThirdCurveId++){
      for (int FourthCurveId=0; FourthCurveId<8; FourthCurveId++){
      res=CurveTransform(FirstCurveId,initial_x,initial_y,radius);
      res=CurveTransform(SecondCurveId,res[0],res[1],radius);
      res=CurveTransform(ThirdCurveId,res[0],res[1],radius);
      res=CurveTransform(FourthCurveId,res[0],res[1],radius);
      // Now that we have the sketch, we need to save it.
      //String filename = (str(FirstCurveId)+str(SecondCurveId)+str(ThirdCurveId)+str(FourthCurveId+".jpg");
      //save(filename);
      print("0"+"\n");
      //clear(); //clear the sketchpad for the next curve
    }
    }
  }
}

  
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
        finalposition[0] = int(current_x);
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
        finalposition[0] = int(current_x);
        finalposition[1] = int(current_y);
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

int[] CurveTransform(int CurveId, int initial_x, int initial_y, int radius){
  int[] finalposition= new int[2];;
  switch(CurveId){
    case 0:
      finalposition = draw_horizontal(initial_x, initial_y, radius);
      break;
    case 1:
      finalposition = draw_vertical(initial_x, initial_y, radius);
      break;
    case 2:
      finalposition = draw_diagUp(initial_x, initial_y, radius);
      break;
    case 3:
      finalposition = draw_diagDown(initial_x, initial_y, radius);
      break;
    case 4:
      finalposition = draw_curve1(initial_x, initial_y, radius);
      break;
    case 5:
      finalposition = draw_curve2(initial_x, initial_y, radius);
      break;
    case 6:
      finalposition = draw_curve3(initial_x, initial_y, radius);
      break;
    case 7:
      finalposition = draw_curve4(initial_x, initial_y, radius);
      break;
  }
  return finalposition;
}