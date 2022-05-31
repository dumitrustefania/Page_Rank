function R = Algebraic(nume, d)

    file = fopen(nume, 'r');
    [N A L] = Read_matrix(file);
    fclose(file);

    M = Compute_M(N, A, L);

    I = eye(N, N);
	% calculez inversa matricii I - d*M
    Inv = PR_Inv(I - d * M);

	% calculez vectorul de pagerank-uri algebric
    R = Inv * ((1 - d) / N) * ones(N, 1);
    output_precision(5);
endfunction
