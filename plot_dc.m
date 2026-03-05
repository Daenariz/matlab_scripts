function plot_dc()
    Rv_values = 5:5:50;
    I2_values = zeros(1, length(Rv_values));
    for i = 1:length(Rv_values)
        [U, R, I] = dc(Rv_values(i));
        I2_values(i) = I(2);
    end
    plot(Rv_values, -I2_values, '-o');
    xlabel('Rv (Ohm)');
    ylabel('I2 (Ampere)');
    title('Strom I2 über verschiedene Werte von Rv');
    grid on;
    print('plot.png', '-dpng');
end
