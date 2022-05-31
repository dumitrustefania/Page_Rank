% calculeaza inversa matricei A folosind procedeul Gram-Schmidt
function B = PR_Inv(A)
    % descompune matricea A in componenetele Q si R
    % Q e o matrice ortogonala (Q * Q' = I), iar R e o matrice superior triunghiulara
    [Q, R] = Gram_Schmidt(A);
    
    % A = QR, cautam A^-1.
    % A * A^-1 = I => pentru fiecare coloana A * x_k = e_k, unde
    % x_k = coloana k din A^-1
    % e_k = coloana k din I
    % QR * x_k = e_k => R * x_k = Q' * e_k => R * x_k = Q'_k, unde
    % Q'_k = coloana k din Q'

    % asadar, pentru fiecare coloana x_k rezolvam sistemul superior triunghiular
    % format din matricea superior triunghiulara R si coloana k a lui Q'

    N = size(A);
    Q = Q';
    for k = 1:N
        B(:, k) = Superior_Triangular_System(R, Q(:, k));
    endfor

endfunction
