%Create a script that will:

%• Ask the user for three sets of (x,y) coordinates that a parabola passes
%through.
cord1 = input('Please enter the first set of coordinates as an array []:\n');
cord2 = input('Please enter the second set of coordinates as an array []:\n');
cord3 = input('Please enter the third set of coordinates as an array []:\n');

% Get x and y values from coordinates
x1 = cord1(1); y1 = cord1(2);
x2 = cord2(1); y2 = cord2(2);
x3 = cord3(1); y3 = cord3(2);

%• Solve a system of equations to determine the coefficients a, b, and
%  c for the equation for the parabola

A = [x1^2 x1 1;
    x2^2 x2 1;
    x3^2 x3 1];
B = [y1;y2;y3];

% Solve for a b & c
coeff = A\B;
a = coeff(1);
b = coeff(2);
c = coeff(3);

%• Display the equation for that parabola on the screen
fprintf('\nThe Parabola Equation through those 3 points is:\n')
fprintf('y = %.3fx^2 + %.3fx + %.3f\n',a,b,c)

%• Graph the parabola AND the three points that the user entered on the same 
% plot for values of x from -10 to 10. Include a title and grid for the plot

x = -10:0.1:10;
y = a*x.^2 + b*x + c;

plot(x,y,"LineWidth",12)
hold on
grid on
plot([x1 x2 x3], [y1 y2 y3], 'ro','MarkerSize',8,'LineWidth',2)

title('Parabola Through User-Entered Points');
xlabel('x')
ylabel('y')
legend('Parabola','Coordinate Points','Location','best')



