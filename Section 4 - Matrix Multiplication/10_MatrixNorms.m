%%% MATRIX NORMS

% create a matrix 
A = [ 1 2 3; 4 5 6; 7 7 9];
% optional orthogonal matrix to show that 2-norm is 1
% [Q,R] = qr(randn(5));
% A = Q;

% Frobenius norm
normFrob = norm(A,'fro');

% induced 2-norm
normInd2 = norm(A);
% note: computed as below
% lambda = sqrt( max(eig(A'*A)) );


% schatten p-norm
p = 2;
s = svd(A); % get singular values
normSchat = sum(s.^p)^(1/p);


% show all norms for comparison
disp([ normFrob normInd2 normSchat ])
