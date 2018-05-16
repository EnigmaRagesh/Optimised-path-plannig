% function to plot the circles and lines between the points

function draw(A, P, B ,X, C, r)
xlim([0,10])
ylim([0,10])

% Drawing rectangle
rectangle('Position',[4 6 2 4],'FaceColor',[0 0.8 1])
rectangle('Position',[4 0 2 4],'FaceColor',[0 0.8 1])

% Drawing circles 
for i = 1 : length(C)
    viscircles(C(i, :), r(i)) ;
end
hold on;
grid on
M = [A; P; B];
M1= [A; X; B];
% text(A(1,1),A(1,2), 'A','FontSize',16)
% text(B(1,1),B(1,2), 'B','FontSize',16)

% Drawing lines between points
labels = {'A', '1', '2' '3', '4', '5', '6', '7', 'B'};
plot (M(:, 1),M(:,2), '--or')
text (M(:, 1),M(:,2),labels, 'FontSize',15)
plot (M1(:, 1),M1(:,2),'-ob')
text (M1(:, 1),M1(:,2),labels, 'FontSize',15)
hold off
legend('Non optimal', 'Optimal')


end