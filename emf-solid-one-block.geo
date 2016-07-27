h = 0.3;
r = 6;
l = 13;
w = 2;
t = 1.5;

Point(1) = {0, 0, 0, h};
Point(2) = {r, 0, 0, h};
Point(3) = {-r, 0, 0, h};
Point(4) = {r+w, w/2, 0, h};
Point(5) = {r+w, -w/2, 0, h};
Point(6) = {-r-w, w/2, 0, h};
Point(7) = {-r-w, -w/2, 0, h};
Point(8) = {r+w+l, w/2, 0, h};
Point(9) = {r+w+l, -w/2, 0, h};
Point(10) = {-r-w-l, w/2, 0, h};
Point(11) = {-r-w-l, -w/2, 0, h};

wd = w/1.414;
Point(12) = {-wd/2,wd/2,0,h};
Point(13) = {-wd/2,wd/2+2*t,0,h};
Point(14) = {-wd/2-t,wd/2+t,0,h};
Point(15) = {wd/2,3*wd/2+2*t,0,h};
Point(16) = {wd/2,-wd/2,0,h};
Point(17) = {wd/2,-wd/2-2*t,0,h};
Point(18) = {wd/2+t,-wd/2-t,0,h};
Point(19) = {-wd/2,-3*wd/2-2*t,0,h};

Point(21) = {0, 0, w, h};
Point(22) = {r, 0, w, h};
Point(23) = {-r, 0, w, h};
Point(24) = {r+w, w/2, w, h};
Point(25) = {r+w, -w/2, w, h};
Point(26) = {-r-w, w/2, w, h};
Point(27) = {-r-w, -w/2, w, h};
Point(28) = {r+w+l, w/2, w, h};
Point(29) = {r+w+l, -w/2, w, h};
Point(30) = {-r-w-l, w/2, w, h};
Point(31) = {-r-w-l, -w/2, w, h};

wd = w/1.414;
Point(32) = {-wd/2,wd/2,w,h};
Point(33) = {-wd/2,wd/2+2*t,w,h};
Point(34) = {-wd/2-t,wd/2+t,w,h};
Point(35) = {wd/2,3*wd/2+2*t,w,h};
Point(36) = {wd/2,-wd/2,w,h};
Point(37) = {wd/2,-wd/2-2*t,w,h};
Point(38) = {wd/2+t,-wd/2-t,w,h};
Point(39) = {-wd/2,-3*wd/2-2*t,w,h};

Line(1) = {4, 8};
Line(2) = {8, 9};
Line(3) = {9, 5};
Circle(4) = {5,1,7};
Line(5) = {7,11};
Line(6) = {11,10};
Line(7) = {10,6};
Circle(8) = {6,1,4};
Circle(11) = {12,14,13};
Line(12) = {13,15};
Circle(13) = {16,14,15};
Circle(14) = {16,18,17};
Line(15) = {17,19};
Circle(16) = {12,18,19};

Line(21) = {24, 28};
Line(22) = {28, 29};
Line(23) = {29, 25};
Circle(24) = {25,21,27};
Line(25) = {27,31};
Line(26) = {31,30};
Line(27) = {30,26};
Circle(28) = {26,21,24};
Circle(31) = {32,34,33};
Line(32) = {33,35};
Circle(33) = {36,34,35};
Circle(34) = {36,38,37};
Line(35) = {37,39};
Circle(36) = {32,38,39};

Line(44) = {4, 24};
Line(45) = {5, 25};
Line(46) = {6, 26};
Line(47) = {7, 27};
Line(48) = {8, 28};
Line(49) = {9, 29};
Line(50) = {10, 30};
Line(51) = {11, 31};
Line(52) = {12, 32};
Line(53) = {13, 33};
Line(55) = {15, 35};
Line(56) = {16, 36};
Line(57) = {17, 37};
Line(59) = {19, 39};


Line Loop(1) = {1,2,3,4,5,6,7,8};
Line Loop(3) = {11,12,-13,14,15,-16};
Line Loop(21) = {-28,-27,-26,-25,-24,-23,-22,-21};
Line Loop(23) = {36,-35,-34,33,-32,-31};

Line Loop(4) =  {-1, 44,21,-48};
Line Loop(5) =  {-2, 48,22,-49};
Line Loop(6) =  {-3, 49,23,-45};
Line Loop(7) =  {-4, 45,24,-47};
Line Loop(8) =  {-5, 47,25,-51};
Line Loop(9) =  {-6, 51,26,-50};
Line Loop(10) = {-7, 50,27,-46};
Line Loop(11) = {-8, 46,28,-44};
Line Loop(14) = {-11,52,31,-53};
Line Loop(15) = {-12,53,32,-55};
Line Loop(16) = {-13,56,33,-55};
Line Loop(17) = {-14,56,34,-57};
Line Loop(18) = {-15,57,35,-59};
Line Loop(19) = {-16,52,36,-59};

Plane Surface(1) = {1,3};
Plane Surface(21) = {21,23};

Plane Surface(4) = {4};
Plane Surface(5) = {5};
Plane Surface(6) = {6};
Ruled Surface(7) = {7};
Plane Surface(8) = {8};
Plane Surface(9) = {9};
Plane Surface(10) = {10};
Ruled Surface(11) = {11};
Ruled Surface(14) = {-14};
Plane Surface(15) = {-15};
Ruled Surface(16) = {16};
Ruled Surface(17) = {-17};
Plane Surface(18) = {-18};
Ruled Surface(19) = {19};

Mesh.Algorithm = 6;
