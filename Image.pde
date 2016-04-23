class Image {
  private PImage i;

  PImage initImage(String url) {
    i = loadImage( url );
    return i;
  }
  
  void setImage() {
    pushMatrix();
    image( i, 25, 25-height/2 );
    popMatrix();
  }
}