/* //<>//
 김동호
 왼쪽 위에 잘 찾아보면 스타트 버튼 있습니다.
 */
Button start;
Image image;
Box box;
float distance;
PImage img;

void setup() {
  colorMode( HSB, 100 );
  size( 640, 480, P3D );

  start = new Button( 30, 30 );
  image = new Image();
  box = new Box();
  img = null;
}

void draw() {
  background( 0, 0, 95 );
 //<>//
  distance = dist( mouseX, mouseY, start.getX(), start.getY() );
  mouseOver();

  if ( img != null ) {
    pushMatrix();
    translate( 0, height/2, -100 );
    rotateX( 0.5 * sin( radians( frameCount % 360 ) ) );
    //image.setImage();
    box.setBox();
    popMatrix();
  }
}

//*
void mousePressed() {
  if ( distance <= start.getX()*0.5 ) {
    selectInput("PNG Images", "isSelected" );
  }
}

void isSelected( File selection ) {
  if ( selection != null ) {
    String url = selection.getPath();
    img = image.initImage( url );
    box.getBox( img ); //<>//
    surface.setSize( img.width+50, img.height+50 );
  }
}

void mouseOver() {
  if ( distance <= start.getX()*0.5 ) {
    start.setButton();
  }
}
//*/