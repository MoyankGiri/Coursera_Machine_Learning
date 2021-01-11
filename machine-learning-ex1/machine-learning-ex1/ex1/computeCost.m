data = load('ex1data1.txt');
y = data(:,2);
m = length(y);
X = [ones(m,1) data(:,1)];
function J = computeCost(X,y,theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y
m = length(y); % number of training examples
% Initialize some useful values

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
h = X*theta;
difference = h - y;
new_difference = sum(difference.^2);
J = (1/(2*m))*new_difference;
  

% =========================================================================
end