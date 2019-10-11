// Movement - Her laver vi de floats der skal til for at bolden bevæger sig
float x;
float y;
float xSpeed = 2;
float ySpeed = 2;

// Ellipse - Her angiver vi ellipsens radius
int rad = 20;

// Box - Her laver vi de ints der skal til for at danne rammerne
float EdgeUp;
float EdgeDown;
float EdgeRight;
float EdgeLeft;

float boxV = 0.020;
float boxV2 = 0.025;

// Setup - Her opskriver vi de ting der kun skal loades én gang
void setup() {
  ellipseMode(RADIUS);
  size(600,600);
  x=30;
  y=30;
  
  // Customizing the box - Her skaber vi rammerne hvori at hoppebolden befinder sig
  EdgeUp = 25;
  EdgeDown = height - 25;
  EdgeRight = width - 25;
  EdgeLeft = 25;
  
}

void draw() {
  EdgeUp+=boxV;
  EdgeDown-=boxV2;
  
  EdgeRight-=boxV;
  EdgeLeft+=boxV2;
  
  
  
  //Background - Her sætter vi standardsbaggrunden
  background(255,0,0);

  //Movement - Her angiver vi hoppeboldens hastighed
  x = x + xSpeed;
  y = y + ySpeed;
  
  //Edges:\\
  //Width - Her skriver vi hvad der sker hvis hoppebolden rammer en af de verticale kanter
  if(x > EdgeRight) {
    xSpeed = xSpeed * -1 + random(-0.2,0.2);
    background(0,0,255);
  }
    
    
  if(x < EdgeLeft) {
    xSpeed = xSpeed * -1 + random(-0.2,0.2);
    background(0,0,255);
  }

  //Height - Her angiver vi hvad der sker hvis hoppebolden rammer en af de horizontale kanter
  if(y < EdgeUp) {
    ySpeed = ySpeed * -1 + random(-0.2,0.2);
    background(0,255,0);
  }
    
  if(y > EdgeDown) {
    ySpeed = ySpeed * -1 + random(-0.2,0.2);
    background(0,255,0);
  }
  
  //Ball - Her laver vi hoppebolden selv
  ellipse(x,y,rad,rad);
  
}
