% algoritmul Gram-Schmidt imbunatatit pentru o mai buna stabilitate numerica
% preluat din laboratorul 3 
function [Q, R] = Gram_Schmidt(A)
    N = size(A);

    for i = 1 : N
        R(i, i) = norm(A(:, i), 2);
        Q(:, i) = A(:, i) / R(i, i);

        for j = i + 1 : N
            R(i, j) = Q(:, i)' * A(:, j);
            A(:, j) = A(:, j) - Q(:, i) * R(i, j);
        endfor
    endfor

endfunction
