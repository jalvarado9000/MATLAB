function [L U P] = LU_pivot(A)
[n ,nl] = size(A);
L = eye(n); P = eye(n); U = A;
for j = 1 : n;
    [pivot m] = max(abs(U(j:n, j)));
    m = m +j -1;
    if m~=j
        temp1 = U(j,:); U(j,:) = U(m,:) = temp1;
        temp2 = P(j,:); P(j,:) = P(m,:); P(m,:) = temp2;
        if j >= 2
            temp3 = L(j,1:j-1); L(j,1:j-1) = L(m,1:j-1);
            L(m,1:j-1) = temp3;
        end
    end
    for i = j+1 : n
        L(i,j) = U(i,j)/U(U(j,j);
        U(i,:) = U(i,:) - L(i,j)*U(j,:);
    end
end
L,U
T1 = L*U
T2 = P*A
