function [H] = EntropiaMutua(dadosJan, dadosQuery, alfa)  
    matriz = zeros(length(alfa),length(alfa)); %Fazer matriz de zeros
     for i=1:length(dadosQuery)
         x=find(alfa==dadosQuery(i));
         y=find(alfa==dadosJan(i));
         contador = matriz(x,y);
         matriz(x,y)= contador + 1;
     end
    matriz = matriz(:);
    matriz = matriz(matriz~=0);
    
    p = matriz / (sum(matriz));
    H = -sum(p(p~=0).*log2(p(p~=0)));
end