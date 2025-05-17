%% The Impact of H1 Changes on the Evolution Path
clc,clear;
figure('color',[1 1 1]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=5,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=10,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'go','linewidth',1); 
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=15,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on;   
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on; 
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'zTick',[0:0.2:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');ylabel('$y$','interpreter','latex');zlabel('$z$','interpreter','latex','Rotation',360,'position',[-0.1 1 1.1]);
grid on
hold on
set(0,'defaultfigurecolor','w')
legend({'{\it\fontname{Bodoni MT}H_{1}}=5','{\it\fontname{Bodoni MT}H_{1}}=10','{\it\fontname{Bodoni MT}H_{1}}=15','{\it\fontname{Bodoni MT}H_{1}}=20'},'location','northeast');

axes('position',[0.13 0.32 0.2 0.2]); 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=5,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=10,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on  
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=15,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on     
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
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

%% The Impact of H2 Changes on the Evolution Path
clc,clear;
figure('color',[1 1 1]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=5;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=10;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'go','linewidth',1); 
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=15;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on;   
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on; 
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'zTick',[0:0.2:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');ylabel('$y$','interpreter','latex');zlabel('$z$','interpreter','latex','Rotation',360,'position',[-0.1 1 1.1]);
grid on
hold on
set(0,'defaultfigurecolor','w')
legend({'{\it\fontname{Bodoni MT}H_{2}}=5','{\it\fontname{Bodoni MT}H_{2}}=10','{\it\fontname{Bodoni MT}H_{2}}=15','{\it\fontname{Bodoni MT}H_{2}}=20'},'location','northeast');

axes('position',[0.13 0.32 0.2 0.2]); 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=5;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=10;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on  
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=15;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on     
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
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

%% The Impact of S1 Changes on the Evolution Path
clc,clear;
figure('color',[1 1 1]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=20,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=30,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on;   
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=40,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on;
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'zTick',[0:0.2:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');ylabel('$y$','interpreter','latex');zlabel('$z$','interpreter','latex','Rotation',360,'position',[-0.1 1 1.1]);
grid on
hold on
set(0,'defaultfigurecolor','w')
legend({'{\it\fontname{Bodoni MT}S_{1}}=15','{\it\fontname{Bodoni MT}S_{1}}=20','{\it\fontname{Bodoni MT}S_{1}}=30','{\it\fontname{Bodoni MT}S_{1}}=40'},'location','northeast');

axes('position',[0.13 0.32 0.2 0.2]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=20,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on  
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=30,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on     
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=40,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
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
xlabel('x','position',[0.8 0.1 0.2])
ylabel('y','position',[0.1 1 0.8],'Rotation',360)

%% The Impact of S2 Changes on the Evolution Path
clc,clear;
figure('color',[1 1 1]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=30,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=35,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on;   
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=40,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on; 
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'zTick',[0:0.2:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');ylabel('$y$','interpreter','latex');zlabel('$z$','interpreter','latex','Rotation',360,'position',[-0.1 1 1.1]);
grid on
hold on
set(0,'defaultfigurecolor','w')
legend({'{\it\fontname{Bodoni MT}S_{2}}=25','{\it\fontname{Bodoni MT}S_{2}}=30','{\it\fontname{Bodoni MT}S_{2}}=35','{\it\fontname{Bodoni MT}S_{2}}=40'},'location','northeast');

axes('position',[0.13 0.32 0.2 0.2]); 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=30,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on  
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=35,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on     
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=40,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
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

%% The Impact of L Changes on the Evolution Path
clc,clear;
figure('color',[1 1 1]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=5,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1); 
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=10,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'go','linewidth',1); 
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=15,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on;   
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on; 
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'zTick',[0:0.2:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');ylabel('$y$','interpreter','latex');zlabel('$z$','interpreter','latex','Rotation',360,'position',[-0.1 1 1.1]);
grid on
hold on
set(0,'defaultfigurecolor','w')
legend({'{\it\fontname{Bodoni MT}L}=5','{\it\fontname{Bodoni MT}L}=10','{\it\fontname{Bodoni MT}L}=15','{\it\fontname{Bodoni MT}L}=20'},'location','northeast');

axes('position',[0.13 0.32 0.2 0.2]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=5,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=10,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on  
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=15,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on     
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
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
