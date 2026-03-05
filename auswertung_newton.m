function [px0] = auswertung_newton(x, b, x0)
    n = length(b);
    r = b(n);
    for k = n-1:-1:1
        r = r * (x0 - x(k)) + b(k);
    end
    px0 = r;
end
