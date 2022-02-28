
function [points] = getPoints(a, b, p)
x = 0:p-1;
lhs = mod(x.^2,p);
rhs = mod(x.^3 + a*x + b,p);
points = [];
%disp("LHS   "+lhs)
%disp("RHS   "+rhs)
%disp("RHS  len  "+length(rhs))
for i = 1:length(rhs);
    I = find(lhs == rhs(i));
    %disp("I is "+I)
        for j=1:length(I)
            disp("Length length(I)"+length(I))
        %disp("The column is"+I(j))
        %disp("the y co-ordinate "+x(I(j)))
        points = [points;x(i),x(I(j))];
       % disp("thexco-ordinate"+x(i))
    end
end
 
%{
subplot(1, 2, 2);
plot(points(:,1),points(:,2),'ro');
set(gca,'XTick',0:1:p-1);
set(gca,'YTick',0:1:p-1);
grid on;
title(['Points over F' num2str(p)]);
%}

end