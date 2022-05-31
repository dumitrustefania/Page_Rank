% creeaza si sorteaza matricea cu perechile (i, val(i)) descrescator dupa valoare
function PR1 = Sorted(R, N)

    for i = 1:N
        PR1(1, i) = i;
        PR1(2, i) = R(i);
    endfor

    for i = 1:N
        for j = i + 1:N
            if PR1(2, i) <= PR1(2, j)
                aux = PR1(:, i);
                PR1(:, i) = PR1(:, j);
                PR1(:, j) = aux;
            endif
        endfor
    endfor

endfunction
