import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 2;
num circle_y = flag_h / 2;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');

  drawROC(ctx);
  querySelector("#germany").onClick.listen((e) => drawGermany(ctx));
  querySelector("#netherlands").onClick.listen((e) => drawNetherlands(ctx));
  querySelector("#uk").onClick.listen((e) => drawUK(ctx));
  querySelector("#russia").onClick.listen((e) => drawRussia(ctx));
  querySelector("#france").onClick.listen((e) => drawFrance(ctx));
  querySelector("#roc").onClick.listen((e) => drawROC(ctx));
  querySelector("#jp").onClick.listen((e) => drawJP(ctx));
  querySelector("#usa").onClick.listen((e) => drawUSA(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}
void drawJP(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#ffffff';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.beginPath();
  ctx.arc(150,100,60,Math.pi * 2, true);
  ctx.closePath();
  // 填色設為白色
  ctx.fillStyle = 'rgb(188,0,45)';
  ctx.fill();
  ctx.clearRect(300,0, 200, 300);
}
num circle_a = flag_w / 4;
num circle_b = flag_h / 4;
void drawROC(ctx){
  // 先畫滿地紅
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  // 再畫青天
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flag_w / 2, flag_h / 2);
  // 畫十二道光芒白日
  ctx.beginPath();
  num star_radius = flag_w / 8;
  num angle = 0;
  for (int i = 0; i < 25; i++) {
    angle += 5 * Math.pi * 2 / 12;
    num toX = circle_a + Math.cos(angle) * star_radius;
    num toY = circle_b + Math.sin(angle) * star_radius;
    // 只有 i 為 0 時移動到 toX, toY, 其餘都進行 lineTo
    if (i != 0)
      ctx.lineTo(toX, toY);
    else
      ctx.moveTo(toX, toY);
  }
  ctx.closePath();
  // 將填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
  // 白日:藍圈
  ctx.beginPath();
  ctx.arc(circle_a, circle_b, flag_w * 17 / 240, 0, Math.pi * 2, true);
  ctx.closePath();
  // 填色設為藍色
  ctx.fillStyle = 'rgb(0, 0, 149)';
  ctx.fill();
  // 白日:白心
  ctx.beginPath();
  ctx.arc(circle_a, circle_b, flag_w / 16, 0, Math.pi * 2, true);
  ctx.closePath();
  // 填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.clearRect(300,0, 200, 300);
}
import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 4;
num circle_y = flag_h / 4;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');


  querySelector("#usa").onClick.listen((e) => drawUSA(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}

void drawUSA(ctx){

  ctx.clearRect(0, 0, flag_w, flag_h);
  //紅色框
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  //白色條紋
  for ( int i = 1; i <= 11; i+=2) {
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 15.4*i, flag_w, 15.4); }
  //藍色部分
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flag_w / 2, flag_h / 1.9);
  //星星部分
    num b = flag_h/18;
  ctx.font = "10px Arial";
  ctx.strokeStyle = 'rgb(255, 255, 255)';
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36,12);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*2);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*3);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*4);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*5);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*6);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*7);
   ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*8);
   ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*9);


}


void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}

void drawFrance(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(250,60,50)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 0,flag_w*63/100, flag_h);
  ctx.fillStyle = 'rgb(0,85,164)';
  ctx.fillRect(0, 0,flag_w*30/100, flag_h);
  ctx.clearRect(300,0, 200, 300);
}
  
void drawRussia(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(225,37,29)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0,61,165)';
  ctx.fillRect(0, 0,flag_w, flag_h*2/3);
  ctx.fillStyle = 'rgb(255,255,255)';
  ctx.fillRect(0, 0,flag_w, flag_h*1/3);
  ctx.clearRect(300,0, 200, 300);
}

void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}
