function [] = plot_newton_interpolation(x, y, l, r)
    b = interpolation_newton(x, y);
    xplot = linspace(l, r, 100);
    yplot = zeros(1, length(xplot));

    for i = 1:length(xplot)
        yplot(i) = auswertung_newton(x, b, xplot(i));
    end

    scatter(x, y);
    hold on;
    plot(xplot, yplot);
    hold off;
    xlabel('x');
    ylabel('y');
    title('Newton Interpolation');
    print('-dpng', 'interpolation.png');
end
