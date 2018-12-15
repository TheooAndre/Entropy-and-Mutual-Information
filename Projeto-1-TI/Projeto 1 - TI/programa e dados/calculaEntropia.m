function calculaEntropia(fonte)
    ext = strsplit(fonte,'.');
    c = string(ext(2));
    
    if(strcmp(c(1),'bmp'))
        F = imread(fonte);
    elseif(strcmp(c(1),'wav'))
        [y,Fs]  = audioread(fonte);
        F = audioread(fonte);
    else
        s = fopen(fonte,'r');
        F = fscanf(s ,'%s');
        F=double(F);
    end
    
    alfa = unique(F);
    N = size(F,1)*size(F,2);
    p = zeros(size(alfa));
    for k = 1: length(alfa)
        p(k) = sum(sum(F == alfa(k)));
    end
    p = p/N;
    e = -sum(p(p~=0).*log2(p(p~=0)));
    fprintf("A entropia de %s é: ",fonte);
    disp(e);
    