function [R1 R2] = PageRank(nume, d, eps)
    
	R1 = Iterative(nume, d, eps);
    R2 = Algebraic(nume, d);

    fin = fopen(nume, 'r');
    [N, A, L] = Read_matrix(fin);

	% citesc val1 si val2 din fisierul de intrare
    line = fgetl(fin);
    line = fgetl(fin);
    val1 = str2double(line);
    line = fgetl(fin);
    val2 = str2double(line);

    fclose(fin);

	% adaug in fisierul de iesire numarul de pagini si
	% valorile pagerank determinate de cei 2 algoritmi
    out_name = strcat(nume, ".out");
    fout = fopen(out_name, "w");
    fprintf(fout, "%d\n\n", N);
    fprintf(fout, "%f\n", R1);
    fprintf(fout, "\n");
    fprintf(fout, "%f\n", R2);
    fprintf(fout, "\n");

	% creeaza si sorteaza descrescator vectorul de pagerank-uri 
    PR1 = Sorted(R2, N);

    for i = 1:N
        idx = PR1(1, i);
        val = PR1(2, i);
		% aplica functia F valorii val pentru val1 si val2 date 
        val = Apartenenta(val, val1, val2);
		% adaug in fisierul de iesire paginile sortate de la cea mai
		% importanta la cea mai putin importanta
        fprintf(fout, "%d %d %f\n", i, idx, val);
    endfor

    fclose(fout);

endfunction

