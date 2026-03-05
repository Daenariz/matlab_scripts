% Dateiname: sekantenverfahren.m
function [xn, n] = sekantenverfahren(b, x, x0, x1)
    epsilon = 10^-10;
    max_iter = 100;
    xn = x0;
    xnm1 = x1;

    for n = 1:max_iter
        fxn = auswertung_newton(x, b, xn);
        fxnm1 = auswertung_newton(x, b, xnm1);
        if abs(fxn) < epsilon
            break;
        end
        xnp1 = xn - fxn * (xn - xnm1) / (fxn - fxnm1);
        if abs(xnp1 - xn) < epsilon
            break;
        end
        xnm1 = xn;
        xn = xnp1;
    end
end

