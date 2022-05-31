function R = Iterative(nume, d, eps)
	 
    file = fopen(nume, 'r');
    [N A L] = Read_matrix(file);
    fclose(file);

    M = Compute_M(N, A, L);

    oldPR = 1 / N * ones(N, 1);
    PR = d * M * oldPR + (1 - d) / N * ones(N, 1);

	% calculez iterativ vectorul de pagerank-uri dupa formula din resursa de wikipedia
	% pana la gasirea unor valori aproximativ egale cu rezultatul cautat
    while norm(oldPR - PR) > eps
        oldPR = PR;
        PR = d * M * oldPR + (1 - d) / N * ones(N, 1);
    endwhile

    R = oldPR;
    output_precision(5);
endfunction

