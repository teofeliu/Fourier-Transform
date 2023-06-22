x = rand(1,8)*10;

N=length(x);
p=ceil(log2(N)); 
N = 2^p;
N2=N/2; 
WW = exp(-pi*i/N2);   
W=WW.^(0 : N2-1);
for j=1:p-1
   t=x(:,1:N2)+x(:,N2+1:N);
   x=[t ; W.*(x(:,1:N2)-x(:,N2+1:N))];
   W=[W(:,1:2:N2); W(:,1:2:N2)];
   N=N2;
   N2=N2/2;
end;
u=x(:,1);
v=x(:,2);
x=[u+v;u-v];
plot(abs(x),'--gs','LineWidth',2,'MarkerSize',10,'MarkerEdgeColor','b','MarkerFaceColor',[0.5,0.5,0.5])