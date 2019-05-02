function [L,U,P] = lufactor(A)
%% Summary

%Created by Chris Graffia on March 29, 2019.
    %Mech 105
%This function determines the upper triangular matrix and lower triangular
%matrix of the user-inputed square matrix, while using partial pivoting
%and keeping track of the pivot matrix. After computing L,U, and P, the
%statement L*U==P*A should be true for all elements, however in the process
%of computing L and U, there is some subtractive cancellation errors, which
%occasionally results in very similar numbers rather than equal numbers.

%% Error Checks

if nargin < 1
    fprintf(2,'\nError using luFactor, one square matrix must be input.\n')
    return
end
[m,n] = size(A);
if m ~= n
    fprintf(2,'\nError, input must be a square matrix.\n')
    return
end

%% Computations

P = eye(size(A));
U = A;
L = eye(size(A));
for i = 1:(n-1)
%Necessary pivots
pivot = U(i:n,i);
[~,l] = max(abs(pivot));
L1 = L;
U1 = U;
P1 = P;
if i > 1
    L(i,1:(i-1)) = L(l+(i-1),1:(i-1));
    L(l+(i-1),1:(i-1)) = L1(i,1:(i-1));
end
U(i,:) = U(l+(i-1),:);
P(i,:) = P(l+(i-1),:);
U(l+(i-1),:) = U1(i,:);
P(l+(i-1),:) = P1(i,:);
%Upper and lower triangular matrix elements
for u = (i+1):n
    L(u,i) = U(u,i)/U(i,i);
    U(u,:) = U(u,:)-((U(u,i)/U(i,i))*U(i,:));
end
end

end