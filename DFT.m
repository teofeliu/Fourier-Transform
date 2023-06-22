x=@(n) 2*cos(2*pi*(18/60)*n)    %input as a function   
%x = [0.5 0.5 0 0 0 0 0 0 0 0]                  % input as a set of points
%x=rand(1,100)*10              % input as a set of 100 random points
%N=length(x)
N=30
X = zeros(1,N)                 % X[g] is the result of the sum for x=g
k=-floor((N-1)/2)              % k is used to center the graph
figure;
hold on;
for g=0:N-1
    for j=0:N-1
        X(g+1)=X(g+1)+x(j+1)*exp(-2i*pi*(g/N)*j)
    end
    plot(k,abs(X(g+1)),'--gs','LineWidth',2,'MarkerSize',10,'MarkerEdgeColor','b','MarkerFaceColor',[0.5,0.5,0.5])
    k=k+1
end
display(X)