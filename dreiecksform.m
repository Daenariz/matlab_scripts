function [A, b] = dreiecksform(A, b)

    n = length(b); 

    for k = 1:n-1
        if A(k, k) == 0
            for i = k+1:n
                if A(i, k) ~= 0
                    [A, b] = zeilentausch(A, b, k, i);
                    break;
                end
            end
        end

        if A(k, k) == 0
            error('Division durch Null: Kein geeignetes Pivot-Element gefunden');
        end

        for i = k+1:n
            faktor = A(i, k) / A(k, k);

            A(i, k:n) = A(i, k:n) - faktor * A(k, k:n);
            b(i) = b(i) - faktor * b(k);
        end
    end
end
