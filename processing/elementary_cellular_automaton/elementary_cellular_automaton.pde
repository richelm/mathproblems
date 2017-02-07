/**
 * Sketch: elementary_cellular_automata
 * 2014.06.27
 * Author: Rich, S.
 *
 * This sketch generates the elementary cellular automata based
 * on rules defined at Wolfram MathWorld.  Refer to link below
 * for details. 
 * 
 * Change the rule array values to generate different evolutions.
 * http://mathworld.wolfram.com/ElementaryCellularAutomaton.html
 */
 
void setup() {
  size(330,180);
  background(255);  // background is white
  stroke(255);  // white outline around cells
  noLoop();    // only loop through draw() once
}


void draw() {
  /* ********************************************/
  /* make changes below for the different rules */
  
  // array to hold rule
  // rule 110
  // 111 110 101 100 011 010 001 000
  //  0   1   1   0   1   1   1   0
  //int[] rule = {0,1,1,0,1,1,1,0};
  
  // rule 99
  // 111 110 101 100 011 010 001 000
  //  0   1   1   0   0   0   1   1
  //int[] rule = {0,1,1,0,0,0,1,1};
 
  // rule 97
  // 111 110 101 100 011 010 001 000
  //  0   1   1   0   0   0   0   1
  int[] rule = {0,1,1,0,0,0,0,1};
  
  //int[] rule = {0,0,0,0,1,0,0,1};
  
  // file name to save rule generation image
  String imageFileName = "rule90.jpg";
  Boolean saveFile = true;

  /* ********************************************/

  
  // arrays to hold current and next generatations
  int[] currentGen = new int[62];
  int[] nextGen = new int[62];
  
  int num_generations = 32; // the maximum number of generations to process
  int ruleIdx = 0;  // calulated index for the rule array
  int leftCell = 0;
  int currentCell = 0;
  int rightCell = 0;
  
  float startX = 5.0;
  float startY = 5.0;
  float cellWidth = 5.0;
  float cellHeight = 5.0;
  
  // for loop counters
  int i;
  int j;
  
  // initialize the generations
  for (i = 0; i < currentGen.length; i++) {
    currentGen[i] = 0;
    nextGen[i] = 0;
  }
  
  currentGen[31] = 1;
    
  for (j = 0; j < num_generations; j++) {
    // display current generation 
    displayGeneration(currentGen, startX, (startY + (j * cellHeight)), cellWidth, cellHeight);
    //printGeneration(currentGen);
    
    for (i = 0; i < currentGen.length; i++) {
      switch(i) {
        case 0:
          leftCell = currentGen[currentGen.length - 1];
          currentCell = currentGen[i];
          rightCell = currentGen[i+1];
          break;
        case 61:
          leftCell = currentGen[i-1];
          currentCell = currentGen[i];
          rightCell = currentGen[0];
          break;
        default:
          leftCell = currentGen[i-1];
          currentCell = currentGen[i];
          rightCell = currentGen[i+1];
          break;
      }
      
      if (leftCell == 1 && currentCell == 1 && rightCell == 1) {ruleIdx = 0;}
      if (leftCell == 1 && currentCell == 1 && rightCell == 0) {ruleIdx = 1;}
      if (leftCell == 1 && currentCell == 0 && rightCell == 1) {ruleIdx = 2;}
      if (leftCell == 1 && currentCell == 0 && rightCell == 0) {ruleIdx = 3;}
      if (leftCell == 0 && currentCell == 1 && rightCell == 1) {ruleIdx = 4;}
      if (leftCell == 0 && currentCell == 1 && rightCell == 0) {ruleIdx = 5;}
      if (leftCell == 0 && currentCell == 0 && rightCell == 1) {ruleIdx = 6;}
      if (leftCell == 0 && currentCell == 0 && rightCell == 0) {ruleIdx = 7;}
      
      nextGen[i] = rule[ruleIdx];
      
      //println(j, i, leftCell, currentCell, rightCell, ruleIdx);
    }
    
    // copy nextGen to currentGen
    for (i = 0; i < nextGen.length; i++) {
      currentGen[i] = nextGen[i];
    }
  }
  
  if (saveFile) {
    saveFrame(imageFileName);
  }
  println("DONE!");
}

void displayGeneration(int[] generation, float startx, float y, float w, float h) {
  float x = 0.0;
  fill(0);
  for (int k = 0; k < generation.length; k++) {
    x = startx + (k * w);
    if (generation[k] == 1) {
      fill(0);
    } else {
      fill(255);
    }
    rect(x,y,w,h);
  }
}

void printGeneration(int[] generation) {
  for (int n = 0; n < generation.length; n++) {
    print(generation[n]);
  }
  println();
}