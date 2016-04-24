class Box { //<>//
  PShape p;
  PImage i;
  int w, h, offset;
  Box( PImage image ) {
    i = image;
    w = i.width;
    h = i.height;
    offset = 10;
    
    p = createShape();
    p.beginShape();
    p.texture( i );
    for ( int x=1; x<w/offset; x++ ) {
      for ( int y=1; y<h/offset; y++ ) {
        p.vertex( (x-1)*offset, (y-1)*offset, getZ( x-1, y-1)); //3
        p.vertex( x*offset, (y-1)*offset, getZ( x, y-1 )); //3
        p.vertex( x*offset, y*offset, getZ( x, y )); //3
      }
    }
    p.endShape( CLOSE );
  }

  float getZ( int x, int y ) {
    return -brightness( i.pixels[ offset * ( x + y * w )]);
  }

  void setBox() {
    shape( p, -width/2, -height/2 );
  }
}