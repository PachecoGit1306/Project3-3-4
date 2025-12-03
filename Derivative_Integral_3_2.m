%Create a script that will:

%Create time and velocity arrays
time = 0:1:12;
vel = [0 1 1.8 2.4 2.6 2.7 2.6 2.2 2 1.9 1.8 1.8 1.8];
% Determine the acceleration function by using the central difference estimation of the derivative.
acc = zeros(size(vel));
% use for loop for the position function by integrating the function up to each value of time shown.
for i = 2:length(time)-1
    acc(i) = (vel(i+1) - vel(i-1)) / (time(i+1) - time(i-1));
end

% for endpoints, use forward/backward difference
acc(1) = (vel(2) - vel(1)) / (time(2) - time(1));
acc(end) = (vel(2) - vel(1)) / (time(2) - time(end-1));

%Compute positions by integration (trapz)
position = zeros(size(time));
for i =2:length(time)
    position(i) = position(i-1) + (vel(i) + vel(i-1)) / 2*(time(i) - time(i-1));
end

% Create three separate plots: acceleration, velocity, and position.
% -All graphs should
%show time values from 0 to 12 seconds
%include a grid, title and axes labels (include units on your axes labels

%Velocity Plot
subplot(3,1,1)
plot(time,vel,'b-o','LineWidth',1.5)
grid on
title('Velocity v Time')
xlabel('Time(s)')
ylabel('Velocity(m/s)')
xlim([0 12])

