function [b] = interpolation_newton(x, y)
    N = length(x);
    Y = zeros(N, N);
    Y(:, 1) = y(:);

    for k = 1:N-1
        for i = 1:N-k
            Delta_x = x(i+k) - x(i);
            Delta_y = Y(i+1, k) - Y(i, k);
            Y(i, k+1) = Delta_y / Delta_x;
        end
    end
    b = Y(1, :);
end

