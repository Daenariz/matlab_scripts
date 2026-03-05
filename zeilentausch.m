function [A, b] = zeilentausch(A, b, i, j)
    temp = A(i, :);
    A(i, :) = A(j, :);
    A(j, :) = temp;
    temp = b(i);
    b(i) = b(j);
    b(j) = temp;
end

