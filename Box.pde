class Box { //<>//
  color[][] colorKey;
  int w, h;
  int offset;
  Box() {
    w = 0;
    h = 0;
    offset = 1;
  }

  void getBox( PImage image ) {
    w = image.width;
    h = image.height;
    colorKey = new color[w/offset][h/offset];
    for ( int x=0; x<w/offset; x++ ) {
      for ( int y=0; y<h/offset; y++ ) {
        colorKey[x][y] = image.pixels[offset*y*w + offset*x];
      }
    }
  }

  void setBox() {
    if (colorKey != null ) {
      for ( int x=0; x<colorKey.length; x++ ) {
        for ( int y=0; y<colorKey[x].length; y++ ) {
          if ( alpha( colorKey[x][y] ) != 0 ) {
            pushMatrix();
            translate( x*offset, -height/2+y*offset );
            fill( colorKey[x][y] );
            noStroke();
            box( offset, offset, brightness( colorKey[x][y] )*1.5 );
            popMatrix();
          }
        }
      }
    }
  }
}