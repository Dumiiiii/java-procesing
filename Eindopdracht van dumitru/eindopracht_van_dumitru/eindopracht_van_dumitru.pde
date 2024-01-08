// eindopdracth boter kaas en eiren
//van dumitru godoroja

char[] xeno = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '};


boolean gameover = false;

void setup() {
  size(300, 300);
  board();
}
void draw() {
  drawPlayer();
  if (!gameover) {
    checkWin();
    checkDraw();
  }
}
// Board
void board() {

  for (int x = 0; x<3; x++) {
    for (int y = 0; y<3; y++) {

      rect(100*x, 100*y, 100, 100);
    }
  }
}
void drawPlayer() {
  if (mousePressed) {
    locater();
  }
}



int x, y;
// de x
void drawX (int x, int y) {
  xeno[x+(y*3)] = 'X';
  line(x*100, y*100, x*100+100, y*100+100);
  line(x*100+100, y*100, x*100, y*100+100);
}

// de circle
void drawO(int x, int y) {
  xeno[x + (y *3)] = 'O';
  ellipse(x*100+50, y*100+50, 100, 100);
}

// de mouse posite en de click
void locater() {
  x = mouseX;
  y = mouseY;
  x = x/100;
  y = y/100;
  if (xeno[x+(y*3)] == ' ') {
    drawX(x, y);
    // de ai
    int cpu = (int)random(9);
    while (xeno[cpu] != ' ') {
      cpu = (int)random(9);
    }
    xeno[cpu] = 'O';
    drawO(cpu%3, cpu/3);
  }
}

void checkWin() {
  // checked voor boven, zijnkant en schuin
  for (int i = 0; i < 3; i++) {
    if (xeno[i] == xeno[i + 3] && xeno[i] == xeno[i + 6] && xeno[i] != ' ') {
      gameover = true;
      println(xeno[i] + " wint");
      return;
    }
    int rowStart = i * 3;
    if (xeno[rowStart] == xeno[rowStart + 1] && xeno[rowStart] == xeno[rowStart + 2] && xeno[rowStart] != ' ') {
      gameover = true;
      println(xeno[rowStart] + " wint");
      return;
    }
  }
  if ((xeno[0] == xeno[4] && xeno[0] == xeno[8] && xeno[0] != ' ') || (xeno[2] == xeno[4] && xeno[2] == xeno[6] && xeno[2] != ' ')) {
    gameover = true;
    println(xeno[4] + " wint");
  }
}

void checkDraw() {
  // checked for als het gelijk spel is en niks kan worden geplaats
  boolean isFull = true;
  for (char cell : xeno) {
    if (cell == ' ') {
      isFull = false;
      break;
    }
  }
  if (isFull && !gameover) {
    gameover = true;
    println("het is gelijkspel");
  }
}
