%% The Impact of I1 Changes on the Evolution Path
clc,clear;
figure('color',[1 1 1]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=40,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=50,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on;   
Q=50,p=5,w=3,r=0.1,I1=60,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on; 
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'zTick',[0:0.2:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');ylabel('$y$','interpreter','latex');zlabel('$z$','interpreter','latex','Rotation',360,'position',[-0.1 1 1.1]);
grid on
hold on
set(0,'defaultfigurecolor','w')
legend({'{\it\fontname{Bodoni MT}I_{1}}=30','{\it\fontname{Bodoni MT}I_{1}}=40','{\it\fontname{Bodoni MT}I_{1}}=50','{\it\fontname{Bodoni MT}I_{1}}=60'},'location','northeast');

axes('position',[0.13 0.32 0.2 0.2]); 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on 
Q=50,p=5,w=3,r=0.1,I1=40,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on  
Q=50,p=5,w=3,r=0.1,I1=50,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on     
Q=50,p=5,w=3,r=0.1,I1=60,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
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
xlabel('x','position',[0.9 0.1 0])
ylabel('y','position',[0.1 1 0.8],'Rotation',360)
%% The Impact of I2 Changes on the Evolution Path
clc,clear;
figure('color',[1 1 1]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=60,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=70,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on;   
Q=50,p=5,w=3,r=0.1,I1=30,I2=80,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on; 
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'zTick',[0:0.2:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');ylabel('$y$','interpreter','latex');zlabel('$z$','interpreter','latex','Rotation',360,'position',[-0.1 1 1.1]);
grid on
hold on
set(0,'defaultfigurecolor','w')
legend({'{\it\fontname{Bodoni MT}I_{2}}=50','{\it\fontname{Bodoni MT}I_{2}}=60','{\it\fontname{Bodoni MT}I_{2}}=70','{\it\fontname{Bodoni MT}I_{2}}=80'},'location','northeast');

axes('position',[0.13 0.32 0.2 0.2]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on 
Q=50,p=5,w=3,r=0.1,I1=30,I2=60,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on  
Q=50,p=5,w=3,r=0.1,I1=30,I2=70,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on     
Q=50,p=5,w=3,r=0.1,I1=30,I2=80,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
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

%% The Impact of C Changes on the Evolution Path
clc,clear;
figure('color',[1 1 1]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=40,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on;
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=50,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on;   
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=60,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
stem3(y(:,1),y(:,2),y(:,3),'yp','linewidth',1);
hold on; 
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'zTick',[0:0.2:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');ylabel('$y$','interpreter','latex');zlabel('$z$','interpreter','latex','Rotation',360,'position',[-0.1 1 1.1]);
grid on
hold on
set(0,'defaultfigurecolor','w')
legend({'{\it\fontname{Bodoni MT}C}=30','{\it\fontname{Bodoni MT}C}=40','{\it\fontname{Bodoni MT}C}=50','{\it\fontname{Bodoni MT}C}=60'},'location','northeast');

axes('position',[0.13 0.32 0.2 0.2]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
hold on 
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=40,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'go','linewidth',1);
hold on  
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=50,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
[t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[0.3 0.3 0.3]);
plot3(y(:,1),y(:,2),y(:,3),'b*','linewidth',1);
hold on     
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=60,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
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
