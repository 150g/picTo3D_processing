class Button {
  private int x, y;

  Button ( int x, int y ) {
    this.x = x;
    this.y = y;
  }

  int getX() { 
    return x;
  }
  
  int getY() { 
    return y;
  }

  void setButton() {
    fill( 100 );
    ellipse( x, y, x, x );
    fill( 0 );
    triangle( x*0.88, y*0.75, x*0.88, y*1.2, x*1.33, y );
  }
}