%% How to make a Slice Plot in Matlab.

% Define x values from -10 to 10 in increments of 0.1.

x = -10:0.1:10;        

% Define t values from 0 to 5 in increments of 0.1.

t = 0:1:5;            

% Create a grid for the x-t domain. 

[X,T] = meshgrid(x,t); 

% Define u(x,t) over the grid. 

u = exp(-(X-T).^2);    

% Open a figure window in Matlab.

figure(1); 

% Make the slice plot of u(x,t).

h = waterfall(x,t,u);

% Adjust the line width of the slice plot.

set(h,'LineWidth',3);

% Choose a coloring scheme for the slice plot.

colormap parula;

% Choose font size and style for the axes tick marks.

set(gca,'FontSize',30,'FontName','Serif');

% Label the x, y, and z axes in appropriate font size and style.

xlabel({'$x$'},'Interpreter','latex','FontSize',40,'FontName','Serif');
ylabel({'$t$'},'Interpreter','latex','FontSize',40,'FontName','Serif');
zlabel({'$u(x,t)$'},'Interpreter','latex','FontSize',40,'FontName','Serif');

% Set x and y limits.
xlim([-10 10]);
ylim([0 5]);