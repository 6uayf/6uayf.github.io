function x = jacobi(A, x_0, b, m)

    n = length(b);

    for k = 1:m
        for i = 1:n
            sum = 0;
            for j = 1:n
                if (j ~= i)
                    sum = sum + A(i, j)*x_0(j);
                end
            end
        
            x_new(i) = (b(i) - sum)/A(i, i);
        end
        x_0 = x_new;
    end

    x =  x_new';

