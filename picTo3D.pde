/* //<>// //<>// //<>// //<>//
 김동호
 왼쪽 위에 잘 찾아보면 스타트 버튼 있습니다.
 */
Button start;
Image image;
Box box;
float distance;
boolean isImageReady;

void setup() {
  colorMode( HSB, 50 );
  size( 640, 480, P3D );
  image = null;
  start = new Button( 30, 30 );
  isImageReady = false;
}

void draw() {
  background( 0, 0, 9.5 );

  distance = dist( mouseX, mouseY, start.getX(), start.getY() );
  mouseOver();

  if ( isImageReady ) {
    pushMatrix();
    translate( width/2, height/2 );
    rotateX( sin( radians( frameCount * 3 ) ) );
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
    image = new Image( url );
    box = new Box( image.getImage() );
    isImageReady = true;
    surface.setSize( image.getImage().width+50, image.getImage().height+50 );
  }
}

void mouseOver() {
  if ( distance <= start.getX()*0.5 ) {
    start.setButton();
  }
}
//*/