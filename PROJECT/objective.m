% objective function
function f = objective(A,P,B)
    f3 = zeros(1, length(P));
    f1 = norm( P(1,:) - A  );
    f2 = norm( B - P(end,:) );
     for i = 1 : length(P) - 1
        f3(i) = norm( P(i,:)-P(i+1,:) );
     end
     
     f4 = sum(f3);
     f = f1 + f2 + f4;
end