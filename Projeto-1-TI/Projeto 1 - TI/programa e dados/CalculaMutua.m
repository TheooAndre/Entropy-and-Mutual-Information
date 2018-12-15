function [informaMutua] = CalculaMutua(query, target, alfa, step)
    p = histc(query(:), alfa) / (length(query));
    EntropiaQuery = -sum(p(p~=0).*log2(p(p~=0)));
    posJanela = 1;
    informaMutua = (length(target) - length(query) + 1);

    for i = 1 : step : length(target) - length(query) + 1
         janDeslizante = target(i : (length(query) + i -1));%Criar a janela deslizante
         dadosJan = histcounts(janDeslizante, alfa);
         p = dadosJan / (length(janDeslizante));
         EntropiaJan = -sum(p(p~=0).*log2(p(p~=0)));
    
         EntropiaCon = EntropiaMutua(janDeslizante, query, alfa); 
    
         informaMutua(posJanela) = EntropiaJan + EntropiaQuery - EntropiaCon;
         posJanela = posJanela + 1;
    end
    
    informaMutua = informaMutua(:);
    fprintf("Informação Mútua: ");
    disp(informaMutua);
    
    
    
