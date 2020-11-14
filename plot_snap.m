%% How to make a Snapshot Plot in Matlab.

% Define x values from -10 to 10 in increments of 0.1.

x = -10:0.1:10;        

% Define time of last snapshot, T.

tf = 5;

% Define t values from 0 to T in increments of 1.

t = 0:1:tf;            

% Create a grid for the x-t domain. 

[X,T] = meshgrid(x,t); 

% Define u(x,t) over the grid. 

u = exp(-(X-T).^2);    

% Open a figure window in Matlab.

figure(1); 

% For each time, plot u(x,t). Superimpose all plots by using hold on.

for i = 1:tf+1;
    plot(x,u(i,:),'LineWidth',3,'Color',[0 0.4 i/(tf+1)]);
    hold on;
end;

% Choose font size and style for the axes tick marks.

set(gca,'FontSize',30,'FontName','Serif');

% Label the x, y, and z axes in appropriate font size and style.

xlabel({'$x$'},'Interpreter','latex','FontSize',40,'FontName','Serif');
ylabel({'$u(x,t)$'},'Interpreter','latex','FontSize',40,'FontName','Serif');

% Allow grid lines to show.

grid on;

% Include a legend.

legend({'$t=0$','$t=1$','$t=2$','$t=3$','$t=4$','$t=5$'},...
    'Interpreter','latex','FontSize',30,'Location','NorthWest');