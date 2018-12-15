function [alfa,F] = calculaAlfa(fonte)
ext = strsplit(fonte,'.');
    c = string(ext(2));
    
    if(strcmp(c(1),'bmp'))
        F = imread(fonte);
        alfa = unique(F);
    elseif(strcmp(c(1),'wav'))
        F = audioread(fonte);
        n = audioinfo(fonte);
        n= n.BitsPerSample;
        d = 2/(2^n);
        alfa = -1:d:1;
    else
        s = fopen(fonte,'r');
        F = fscanf(s ,'%s');
        F=double(F);
        alfa = ['A':'Z' 'a':'z' ' '];  
    end
    
    
    