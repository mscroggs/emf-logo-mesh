h = 0.3;
r = 6;
l = 10;
w = 1;

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

Line(1) = {4, 8};
Line(2) = {8, 9};
Line(3) = {9, 5};
Circle(4) = {5,1,7};
Line(5) = {7,11};
Line(6) = {11,10};
Line(7) = {10,6};
Circle(8) = {6,1,4};
Circle(9) = {2,1,3};
Circle(10) = {3,1,2};

Line Loop(1) = {1,2,3,4,5,6,7,8};
Line Loop(2) = {9,10};

Plane Surface(2) = {1,2};

Mesh.Algorithm = 6;
