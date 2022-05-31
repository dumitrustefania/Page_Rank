% rezolva un sistem superior triunghiular
% A*x = b
% am preluat formulele din laboratorul 2
function [x] = Superior_Triangular_System(A, b)

    N = size(A);
    x = zeros(N, 1);

    for i = N:-1:1
        x(i) = (b(i) - A(i, i + 1 : N) * x(i + 1 : N)) / A(i, i);
    endfor

endfunction
