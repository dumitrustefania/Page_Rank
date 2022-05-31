function y = Apartenenta(x, val1, val2)
	% calculez a si b astfel incat F sa fie continua
    a = 1 / (val2 - val1);
    b = -a * val1;

	% vad pe ce ramura a functiei ma aflu si calculez noua valoare
    if x < val1
        y = 0;
    elseif x > val2
        y = 1;
    else
        y = a * x + b;
    endif

endfunction