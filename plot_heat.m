%% How to make a Heat Maps in Matlab.

% Define x values from -10 to 10 in increments of 0.1.

x = -10:0.1:10;        

% Define t values from 0 to 5 in increments of 0.1.

t = 0:0.1:5;            

% Create a grid for the x-t domain. 

[X,T] = meshgrid(x,t); 

% Define u(x,t) over the grid. 

u = exp(-(X-T).^2);    

% Open a figure window in Matlab.

figure(1); 

% Make the 3D plot of u(x,t).

pcolor(x,t,u);

% Remove gridlines from heat map. 

shading interp;

% Choose a coloring scheme for the heat map.

colormap parula;

% Choose font size and style for the axes tick marks.

set(gca,'FontSize',30,'FontName','Serif');

% Label the x, y, and z axes in appropriate font size and style.

xlabel({'$x$'},'Interpreter','latex','FontSize',40,'FontName','Serif');
ylabel({'$t$'},'Interpreter','latex','FontSize',40,'FontName','Serif');
