//created by peliar 2023-2-5
//processing 4.0.1
class Symbol {
  float px;
  float py;
  float vx;
  float vy;
  float ax;
  float ay;
  float c;
  float alpha;
  float size;
  Symbol(float x,float y,float vlox, float vloy){
    px = x; py = y;
    vx = vlox; vy = vloy;
    ax = 0; ay = 0;
    c = 0; alpha = 0;
    size = 9;
  }
  void updateState(){
    vx += ax; vy += ay;
    px += vx; py += vy;
  }
  void pDraw(int s){
    updateState();
    size = s;
    ellipse(px, py, size, size);
  }
}
