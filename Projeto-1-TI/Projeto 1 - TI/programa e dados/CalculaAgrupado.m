function CalculaAgrupado(fonte)  

   [alfa,F] = calculaAlfa(fonte);
    
    vetorFonte = F(:); %tornar matriz em vetor
   
    matriz = zeros(length(alfa),length(alfa)); %Fazer matriz de zeros
    for i=1:2:length(vetorFonte)-1
        x=find(alfa==vetorFonte(i));
        y=find(alfa==vetorFonte(i+1));
        contador = matriz(x,y);
        matriz(x,y)= contador + 1;
    end
    
    matriz = matriz(:);
       
    p = matriz / (sum(matriz));
    H = -sum(p(p~=0).*log2(p(p~=0)));
    H = H/2; %Temos de dividir porque a entropia media calculada e para cada agrupamento
    fprintf("A Entropia agrupada de %s é:",fonte);
    disp(H);
    bar(matriz(:));
end
  