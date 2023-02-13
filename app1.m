n=input('Enter the nr of trials: ');
% n=3, A[0 1 2 3 ; 1/8 3/8 3/8 1/8]
A=[0:n ;pdf('bino',0:n,n,0.5)]
% graph
%plot(0:n,pdf('bino',0:n,n,0.5))


%plot(0:0.01:n,cdf('bino',0:0.01:n,n,0.5))

plot(0:n,pdf('bino',0:n,n,0.5),'d')
% hold on/ hold off to plot multiple function in one graph
hold on 
plot(0:0.01:n,cdf('bino',0:0.01:n,n,0.5))
legend('pdf','cdf')
%zoom in 
axis([-0.1,3.1,-0.1,1.1])
hold off


fprintf('P(X=0) is %f \n',pdf('bino',0,n,0.5))

fprintf('P(X!=1) is %f \n',1-pdf('bino',1,n,0.5))

fprintf('P(X<=2) is %f \n', cdf('bino',2,n,0.5))% F(X=2)=P(X<=2)

fprintf('P(X<2) is %f \n', cdf('bino',2,n,0.5)-pdf('bino',2,n,0.5))  %P(X < 2) = F(X = 2) - P(X = 2) = P(X <= 2) - P(X = 2)

fprintf('P(X>=1) is %f \n', 1-pdf('bino',0,n,0.5)) % P(X>=1)= 1-P(X<1)= 1- P(0)

fprintf('P(X>1) is %f \n', 1-cdf('bino',1,n,0.5)) % P(X>1)=1-P(X<=1)= 1- F(X=1)


s=0;
for i = 1:n
        a=rand;
        if a>0.5
            s=s+1;
            fprintf("Heads\n")
        else
            fprintf("Tails\n")
end
end
s
pdf('bino',s,n,0.5)


