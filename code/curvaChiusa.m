% CURVE CHIUSE
clear
k=3;
tau = linspace(0,1,7); 
m = ones(1,length(tau));
t= brk2knt(tau,m); % ripete i breakpoints in base alle molteplicita'

h = diff(t);

hlength=length(h);
ts=zeros(1,k-1);
td=zeros(1,k-1);
ts(k-1)=tau(1)-h(hlength);
td(1)  = tau(end)+h(1);
for i=1:k-2
    ts(k-1-i) = ts(k-i)-h(end-i);
    td(i+1)   = td(i)  + h(i+1);
end
t=[ts,t,td];
n= length(t)-k; 


c=ginput(n-k+1); 
c=c';
clength=length(c);
c(:,clength+1:clength+k-1) = c(:,1:k-1);

F=spmak(t,c);
fnplt(F,[0,1],'blue') 
hold on
plot(c(1,:),c(2,:),'red',c(1,:),c(2,:),'ro')








