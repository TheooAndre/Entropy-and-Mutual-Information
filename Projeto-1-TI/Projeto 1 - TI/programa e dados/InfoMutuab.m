function [informaMutua] = InfoMutuab(fonte,fonte1)
    [query,Fs] = audioread(fonte);
    [target,Fs_] = audioread(fonte1);
    target_esq = target(:,1);
    query_esq=query(:,1);
    query_esq = query_esq(:);
    step = round(length(query_esq)/4);
    alfa = calculaAlfa(fonte);
    
    
    p = histc(query_esq, alfa) / (length(query_esq));
    EntropiaQuery = -sum(p(p~=0).*log2(p(p~=0)));
    posJanela = 1;
    informaMutua = (length(target_esq) - length(query_esq) + 1);
    for i = 1 : step : length(target_esq) - length(query_esq) + 1
         janDeslizante = target_esq(i : (length(query_esq) + i -1));%Criar a janela deslizante
         dadosJan = histcounts(janDeslizante, alfa);
         p = dadosJan / (length(janDeslizante));
         EntropiaJan = -sum(p(p~=0).*log2(p(p~=0)));
    
         EntropiaCon = EntropiaMutua(janDeslizante, query_esq, alfa); 
    
         informaMutua(posJanela) = EntropiaJan + EntropiaQuery - EntropiaCon;
         posJanela = posJanela + 1;
        
    end
    %informaMutua = informaMutua(:);
    fprintf("Informação Mútua de %s: \n",fonte1);
    informaMutua = informaMutua(:);
    disp(informaMutua);
    
    
    
    
    

















end