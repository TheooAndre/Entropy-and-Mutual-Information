function histograma(fonte)
ext = strsplit(fonte,'.');
c = string(ext(2));


if(strcmp(c(1),'bmp'))
    I = imread(fonte);
    alfa = unique(I);
    histogram(I,alfa);
elseif(strcmp(c(1),'wav'))
    [y,Fs]  = audioread(fonte);
    n = audioinfo(fonte);
    d = 2/(2^(n.BitsPerSample));
    alfa = -1:d:1-d;
    histogram(y,alfa);
    grid on;    
else
    a = importdata(fonte);
    frase = [a{:}];
    letras = ['A':'Z' 'a':'z' ' '];
    soma = numel(letras);
    for k=1:numel(letras)
       soma(k) = sum(ismember(frase,letras(k)));
    end
    bar(soma(:));
    xticks([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52]);
    xticklabels({' A ',' B ',' C ',' D ',' E ',' F ',' G ',' H ',' I ',' J ',' K ',' L ',' M ',' N ',' O ',' P ',' Q ',' R ',' S ',' T ',' U ',' V ',' W ',' Y ',' X ',' Z ',' a ',' b ',' c ',' d ',' e ',' f ',' g ',' h ',' i ',' j ',' k ',' l ',' m ',' n ',' o ',' p ',' q ',' r ',' s ',' t ',' u ',' v ',' w ',' y ',' x ',' z '});
end
