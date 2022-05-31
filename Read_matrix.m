% citesc datele din fiserul de intarre pentru a crea matricea de adiacenta si
% vectorul L - care memoreaza pe pozitia i numarul de pagini spre care trimite pagina i
function [N A L] = Read_matrix(file)

    N = fscanf(file, '%d', 1);
    A = zeros(N, N);

    for i = 1:N
        node = fscanf(file, '%d', 1);
        no_vec = fscanf(file, '%d', 1);

        for j = 1:no_vec
            vec = fscanf(file, '%d', 1);
            A(node, vec) = 1;
        endfor

        A(node, node) = 0;
        L(i) = sum(A(i, :) == 1);
    endfor

endfunction