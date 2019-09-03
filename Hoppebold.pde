

// ________________________________________________________________________________ \\

// LÆS FØRST KODEN - JEG HAR KOMMET TIL AT LAVE EN FEJL SOM JEG IKKE SELV KAN FINDE OG LØSE
// MERE INFO I BUNDEN...

// ________________________________________________________________________________ \\

// Movement - Her laver vi de floats der skal til for at bolden bevæger sig
float x;
float y;
float xSpeed = 2;
float ySpeed = 2;

// Ellipse - Her angiver vi ellipsens radius
int rad = 55;

// Box - Her laver vi de ints der skal til for at danne rammerne
int EdgeUp;
int EdgeDown;
int EdgeRight;
int EdgeLeft;

// Setup - Her opskriver vi de ting der kun skal loades én gang
void setup() {
  ellipseMode(RADIUS);
  size(600,600);
  x=1;
  y=1;
  
  // Customizing the box - Her skaber vi rammerne hvori at hoppebolden befinder sig
  EdgeUp = height + 25;
  EdgeDown = height - 25;
  EdgeRight = width - 25;
  EdgeLeft = width + 25;
  
}

void draw() {
  
  //Background - Her sætter vi standardsbaggrunden
  background(255,0,0);

  //Movement - Her angiver vi hoppeboldens hastighed
  x = x + xSpeed;
  y = y + ySpeed;
  
  //Edges:\\
  //Width - Her skriver vi hvad der sker hvis hoppebolden rammer en af de verticale kanter
  if(x > EdgeRight || x < EdgeLeft) {
    xSpeed = xSpeed * -1;
    background(0,0,255);
  }

  //Height - Her angiver vi hvad der sker hvis hoppebolden rammer en af de horizontale kanter
  if(y > EdgeUp || y < EdgeDown) {
    ySpeed = ySpeed * -1;
    background(0,255,0);
  }
  
  //Ball - Her laver vi hoppebolden selv
  ellipse(x,y,rad,rad);
  
}

// Jeg har lavet en fejl i min kode som jeg har problemer med at lokalisere, det kan være at du kan hjælpe mig med den til næste time?
