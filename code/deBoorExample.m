clear;
close all;

hold on;
grid on;
axis([-10 10 -10 10]);

k = input('k: ');
n = input('n: ');
controlPoints = getPoints(n+1);
plot(controlPoints(:,1), controlPoints(:,2), 'LineWidth', 2);
knots = [zeros(1,k-1) linspace(0, 1, n-k+3) ones(1,k-1)];

m = 10000;  % size of the parametric interval [0, 1]
t = linspace(0, 1, m);
X = ones(m, 2);
for i = 1 : m
    X(i,:) = deBoor(t(i), controlPoints, knots, k);
end
plot(X(:,1), X(:,2), 'LineWidth', 2);

pause(3)

X = spmak(knots, controlPoints');
fnplt(X, [0 1]);