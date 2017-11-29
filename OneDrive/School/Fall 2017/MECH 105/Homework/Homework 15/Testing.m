function [x,c] = Testing(D, U, k, c0, cL, L, dx)

Equations = L/dx-1;

plus=((D)/((dx)^2)-(U)/(2*dx));
mid=(-(2*D)/((dx)^2)-k);
minus=((D)/((dx)^2)+(U)/(2*dx));
n=zeros(Equations);
n(1,1)=mid;
n(1,2)=plus;
row=n(1,:);
col=n(:,1);
n(2,1)=minus;

for i = 2:length(row)
    for j = 2:length(col)
        n(i,j)=n(i-1,j-1)
    end
end