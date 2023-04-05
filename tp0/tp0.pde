// Zapata Samira
// tp0 comision 1


size (800, 400);

PImage paisaje;
paisaje = loadImage ("paisaje.jpg");
image (paisaje, 0, 0, 400, 400);

noStroke ();
fill (255, 190, 130);
rect (400, 0, 800, 300);

fill (150, 75, 45);
rect (400, 300, 400, 300);

fill (150, 75, 45);
quad (410, 240, 500, 230, 600, 400, 400, 800);

stroke (50, 50);
fill (255, 240, 150);
ellipse (600, 180, 40, 40);

noStroke ();
fill (140, 60, 20);
triangle (550, 200, 750, 400, 400, 400);
triangle (650, 180, 800, 400, 400, 400);

fill (160, 80, 40);
triangle (740, 240, 790, 400, 600, 400);
quad (730, 280, 800, 300, 800, 400,700, 400);

fill (140,70, 50);
triangle (500, 210, 700,400, 400, 400);

fill (205);
triangle (500, 230, 400, 400, 650,400);

fill (160,76, 50);
triangle (600, 300, 700, 400, 520, 400);
