function Ordena_Mutua(Ordem_Dec,s1,s2,s3,s4,s5,s6,s7,s8,s9)
for i=1:length(Ordem_Dec)
    if Ordem_Dec(i) == s1
        fprintf("song01.wav: %f\n",Ordem_Dec(i));
    elseif Ordem_Dec(i) == s2
        fprintf("Song02.wav: %f\n",Ordem_Dec(i));
    elseif Ordem_Dec(i) == s3
        fprintf("Song03.wav: %f\n",Ordem_Dec(i));
    elseif Ordem_Dec(i) == s4
        fprintf("Song04.wav: %f\n",Ordem_Dec(i));
    elseif Ordem_Dec(i) == s5
        fprintf("Song05.wav: %f\n",Ordem_Dec(i));
    elseif Ordem_Dec(i) == s6
        fprintf("Song06.wav: %f\n",Ordem_Dec(i));
    elseif Ordem_Dec(i) == s7
        fprintf("Song07.wav: %f\n",Ordem_Dec(i));
    elseif Ordem_Dec(i) == s8
        fprintf("Song08.wav: %f\n",Ordem_Dec(i));
     elseif Ordem_Dec(i) == s9
        fprintf("Song09.wav: %f\n",Ordem_Dec(i));
    end
end
end