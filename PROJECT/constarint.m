%Constraint function
function [g,h] = constarint(A, P, B, C, r)
    X = [A ; P ; B ];
    n = 0: 0.1 :1;
    y = zeros();
    g = zeros();
    k = 1;
    for i = 1:length(X)-1
        for k = 1 : length(C)
             for j = 1 : length(n)
                finite = X(i,:) + n(j) * (X(i+1,:)-X(i,:));  
                y(j,i) = norm(C(k,:) - finite);
             end
                g(i,k) = r(k) -  min( y(:, i));
       
        end
    end
    h= [];
end