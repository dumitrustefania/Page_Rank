% calculeaza matricea M cu ajutorul vectorului L dupa formula din resursa de wikipedia
function M = Compute_M(N, A, L)

    for i = 1:N
        for j = 1:N
            if A(j, i)
                M(i, j) = 1 / L(j);
            endif
        endfor
    endfor

endfunction
