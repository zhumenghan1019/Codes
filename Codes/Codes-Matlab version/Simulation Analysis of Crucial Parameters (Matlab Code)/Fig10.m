%% The Impact of K1 Changes on the Evolution Path
clc,clear;
figure('color',[1 1 1]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=10,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=20,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'go','linewidth',1); 
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1); 
hold on; 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=40,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1); 
hold on; 
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'zTick',[0:0.2:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');ylabel('$y$','interpreter','latex');zlabel('$z$','interpreter','latex','Rotation',360,'position',[-0.1 1 1.1]);
grid on
hold on
set(0,'defaultfigurecolor','w')
legend({'{\it\fontname{Bodoni MT}K_{1}}=10','{\it\fontname{Bodoni MT}K_{1}}=20','{\it\fontname{Bodoni MT}K_{1}}=30','{\it\fontname{Bodoni MT}K_{1}}=40'},'location','northeast');

axes('position',[0.13 0.32 0.2 0.2]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=10,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=20,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on  
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=40,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
axis([0 1 0 1 0 1])
set(gca,'XTickLabel','','YTickLabel','','ZTickLabel','')
grid on
hold on  
set(0,'defaultfigurecolor','w')
view([0 90]);
xlabel('x','position',[0.8 -0.1 0.2])
ylabel('y','position',[0.1 1 0.8],'Rotation',360)

%% The Impact of K2 Changes on the Evolution Path
clc,clear;
figure('color',[1 1 1]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=35,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1); 
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'go','linewidth',1); 
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=55,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=65,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1); 
hold on; 
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'zTick',[0:0.2:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');ylabel('$y$','interpreter','latex');zlabel('$z$','interpreter','latex','Rotation',360,'position',[-0.1 1 1.1]);
grid on
hold on
set(0,'defaultfigurecolor','w')
legend({'{\it\fontname{Bodoni MT}K_{2}}=35','{\it\fontname{Bodoni MT}K_{2}}=45','{\it\fontname{Bodoni MT}K_{2}}=55','{\it\fontname{Bodoni MT}K_{2}}=65'},'location','northeast');

axes('position',[0.13 0.32 0.2 0.2]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=35,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on  
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=55,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on     
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=65,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
axis([0 1 0 1 0 1])
set(gca,'XTickLabel','','YTickLabel','','ZTickLabel','')
grid on
hold on  
set(0,'defaultfigurecolor','w')
view([0 90]);
xlabel('x','position',[0.8 -0.1 0.2])
ylabel('y','position',[0.1 1 0.8],'Rotation',360)


%% The Impact of T1 Changes on the Evolution Path
clc,clear;
figure('color',[1 1 1]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=5,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'go','linewidth',1); 
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=15,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on;   
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=20,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on; 
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'zTick',[0:0.2:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');ylabel('$y$','interpreter','latex');zlabel('$z$','interpreter','latex','Rotation',360,'position',[-0.1 1 1.1]);
grid on
hold on
set(0,'defaultfigurecolor','w')
legend({'{\it\fontname{Bodoni MT}T_{1}}=5','{\it\fontname{Bodoni MT}T_{1}}=10','{\it\fontname{Bodoni MT}T_{1}}=15','{\it\fontname{Bodoni MT}T_{1}}=20'},'location','northeast');

axes('position',[0.13 0.32 0.2 0.2]); 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=5,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on  
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=15,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on     
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=20,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
axis([0 1 0 1 0 1])
set(gca,'XTickLabel','','YTickLabel','','ZTickLabel','')
grid on
hold on  
set(0,'defaultfigurecolor','w')
view([0 90]);
xlabel('x','position',[0.8 -0.1 0.2])
ylabel('y','position',[0.1 1 0.8],'Rotation',360)

%% The Impact of T2 Changes on the Evolution Path
clc,clear;
figure('color',[1 1 1]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=10,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1); 
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'go','linewidth',1); 
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=30,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on;   
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=40,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on; 
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'zTick',[0:0.2:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');ylabel('$y$','interpreter','latex');zlabel('$z$','interpreter','latex','Rotation',360,'position',[-0.1 1 1.1]);
grid on
hold on
set(0,'defaultfigurecolor','w')
legend({'{\it\fontname{Bodoni MT}T_{2}}=10','{\it\fontname{Bodoni MT}T_{2}}=20','{\it\fontname{Bodoni MT}T_{2}}=30','{\it\fontname{Bodoni MT}T_{2}}=40'},'location','northeast');

axes('position',[0.13 0.32 0.2 0.2]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=10,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on  
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=30,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on     
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=40,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
axis([0 1 0 1 0 1])
set(gca,'XTickLabel','','YTickLabel','','ZTickLabel','')
grid on
hold on  
set(0,'defaultfigurecolor','w')
view([0 90]);
xlabel('x','position',[0.8 -0.1 0.2])
ylabel('y','position',[0.1 1 0.8],'Rotation',360)

%% The Impact of T3 Changes on the Evolution Path
clc,clear;
figure('color',[1 1 1]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=5,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=15,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on;   
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=20,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on; 
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'zTick',[0:0.2:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');ylabel('$y$','interpreter','latex');zlabel('$z$','interpreter','latex','Rotation',360,'position',[-0.1 1 1.1]);
grid on
hold on
set(0,'defaultfigurecolor','w')
legend({'{\it\fontname{Bodoni MT}T_{3}}=5','{\it\fontname{Bodoni MT}T_{3}}=10','{\it\fontname{Bodoni MT}T_{3}}=15','{\it\fontname{Bodoni MT}T_{3}}=20'},'location','northeast');

axes('position',[0.13 0.32 0.2 0.2]); 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=5,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on  
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=15,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on     
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=20,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
axis([0 1 0 1 0 1])
set(gca,'XTickLabel','','YTickLabel','','ZTickLabel','')
grid on
hold on  
set(0,'defaultfigurecolor','w')
view([0 0]);
xlabel('x','position',[0.8 -0.1 0.2])
zlabel('z','position',[0.1 1 0.8],'Rotation',360)
