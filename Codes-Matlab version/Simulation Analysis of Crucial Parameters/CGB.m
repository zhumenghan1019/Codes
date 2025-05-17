%%The replicator dynamics equation
function dydt=CGB(t,y,Q,p,w,r,I1,I2,S1,S2,K1,K2,C,L,T1,T2,T3,M,H1,H2)
dydt=zeros(3,1); 
dydt(1)=-y(1)*(y(1)-1)*(H1-I1+K1-S1+y(3)*y(2)*T1);
dydt(2)=-y(2)*(y(2)-1)*(H2-I2+K2-S2+y(1)*y(3)*T2);
dydt(3)=-y(3)*(y(3)-1)*(L-C+M+y(1)*y(2)*T3);
end
