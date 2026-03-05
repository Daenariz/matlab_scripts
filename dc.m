function [U, R, I] = dc(Rv)
    R1 = 20;
    R2 = 25;
    Uq1 = 20;
    Uq2 = 10;
    R = [R1 + R2, 0; 0, Rv];
    U = [Uq1; Uq2];
    I = gauss(R, U);
end

