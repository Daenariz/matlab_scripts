function [a] = matrixnorm(A)
  row_sums = sum(abs(A), 2);
  a = max(row_sums);
end

