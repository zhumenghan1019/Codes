%% The tripartite strategy evolutionary trajectories. (w=0.1)
clc,clear; 
figure('color',[1 1 1]);
Q=50,p=5,w=0.1,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1   
        [t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[i j k]);               
        plot3(y(:,1),y(:,2),y(:,3),'linewidth',1);
        set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
        hold on
        axis([0 1 0 1 0 1])
        view([45 10])
        end
    end
end
grid on
hold on 
set(0,'defaultfigurecolor','w')
xlabel('x','Rotation',0);
ylabel('y','Rotation',0);
zlabel('z','Rotation',360,'position',[0 0 1.05]);

%% The tripartite strategy evolutionary trajectories. (w=3)
clc,clear; 
figure('color',[1 1 1]);
Q=50,p=5,w=3,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1   
        [t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[i j k]);               
        plot3(y(:,1),y(:,2),y(:,3),'linewidth',1);
        set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
        hold on
        axis([0 1 0 1 0 1])
        view([45 10])
        end
    end
end
grid on
hold on 
set(0,'defaultfigurecolor','w')
xlabel('x','Rotation',0);
ylabel('y','Rotation',0);
zlabel('z','Rotation',360,'position',[0 0 1.05]);

%% The tripartite strategy evolutionary trajectories. (w=10)
clc,clear; 
figure('color',[1 1 1]);
Q=50,p=5,w=10,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1   
        [t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[i j k]);               
        plot3(y(:,1),y(:,2),y(:,3),'linewidth',1);
        set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
        hold on
        axis([0 1 0 1 0 1])
        view([45 10])
        end
    end
end
grid on
hold on 
set(0,'defaultfigurecolor','w')
xlabel('x','Rotation',0);
ylabel('y','Rotation',0);
zlabel('z','Rotation',360,'position',[0 0 1.05]);

%% The tripartite strategy evolutionary trajectories. (w=20)
clc,clear; 
figure('color',[1 1 1]);
Q=50,p=5,w=20,r=0.1,I1=30,I2=50,S1=15,S2=25,K1=30,K2=45,C=30,T1=10,T2=20,T3=10,L=20,M=15,H1=20,H2=20;
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1   
        [t,y]=ode45(@(t,y) CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2),[0 50],[i j k]);               
        plot3(y(:,1),y(:,2),y(:,3),'linewidth',1);
        set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
        hold on
        axis([0 1 0 1 0 1])
        view([45 10])
        end
    end
end
grid on
hold on 
set(0,'defaultfigurecolor','w')
xlabel('x','Rotation',0);
ylabel('y','Rotation',0);
zlabel('z','Rotation',360,'position',[0 0 1.05]);

