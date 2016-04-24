class Image {
  private PImage i;

  Image( String url ) {
    i = loadImage( url );
    //i.resize( i.width/2, i.height/2 );
  }
  
  PImage getImage() {
    return i;
  }
  
  void setImage() {
    pushMatrix();
    image( i, 25, 25-height/2 );
    popMatrix();
  }
}