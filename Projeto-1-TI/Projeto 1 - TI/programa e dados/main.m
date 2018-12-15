%3
histograma('kid.bmp');
calculaEntropia('kid.bmp');
pause();
 
histograma('homer.bmp');
calculaEntropia('homer.bmp');
pause();
 
histograma('homerBin.bmp');
calculaEntropia('homerBin.bmp');
pause();
 
histograma('guitarSolo.wav');
calculaEntropia('guitarSolo.wav');
pause(); 
histograma('english.txt');
calculaEntropia('english.txt');
pause();
 
%4
calculaEntropiaH('kid.bmp');
pause();

calculaEntropiaH('homer.bmp');
pause();

calculaEntropiaH('homerBin.bmp');
pause();

calculaEntropiaH('guitarSolo.wav');
pause();

calculaEntropiaH('english.txt');
pause();

%5
CalculaAgrupado('kid.bmp');
pause();
 
CalculaAgrupado('homer.bmp');
pause();
 
CalculaAgrupado('homerBin.bmp');
pause();
 
CalculaAgrupado('guitarSolo.wav');
pause();
 
CalculaAgrupado('english.txt');
pause();

%6a
 query = [2 6 4 10 5 9 5 8 0 8];
 target = [6 8 9 7 2 4 9 9 4 9 1 4 8 0 1 2 2 6 3 2 0 7 4 9 5 4 8 5 2 7 8 0 7 4 8 5 7 4 3 2 2 7 3 5 2 7 4 9 9 6]; 
 step = 1;
 alfa = 0:10;
 CalculaMutua(query,target,alfa,step);

%6b
figure();
subplot(3,1,1);
a = InfoMutuab('guitarSolo.wav','target01 - repeat.wav');
plot(a);
xlabel('target01 - repeat.wav');
hold on;
subplot(3,1,2);
b = InfoMutuab('guitarSolo.wav','target02 - repeatNoise.wav');
plot(b);
xlabel('target02 - repeatNoise.wav');
hold on;
subplot(3,1,3);
plot(a);
hold on;
plot(b);
xlabel(['{\color{red}target02 - repeatNoise.wav     ' '\color{blue}  target01 - repeat.wav}']);
hold off;
figure();
%6c
subplot(3,3,1);
[song1, graf1] = InfoMutua6c('guitarSolo.wav','Song01.wav');
plot(graf1);
xlabel('Song01.wav');
hold on;
subplot(3,3,2);
[song2, graf2] = InfoMutua6c('guitarSolo.wav','Song02.wav');
plot(graf2);
xlabel('Song02.wav');
hold on;
subplot(3,3,3);
[song3, graf3] = InfoMutua6c('guitarSolo.wav','Song03.wav');
plot(graf3);
xlabel('Song03.wav');
hold on;
subplot(3,3,4);
[song4, graf4] = InfoMutua6c('guitarSolo.wav','Song04.wav');
plot(graf4);
xlabel('Song03.wav');
hold on;
subplot(3,3,5);
[song5, graf5] = InfoMutua6c('guitarSolo.wav','Song05.wav');
plot(graf5);
xlabel('Song05.wav');
hold on;
subplot(3,3,6);
[song6, graf6] = InfoMutua6c('guitarSolo.wav','Song06.wav');
plot(graf6);
xlabel('Song06.wav');
hold on;
subplot(3,3,7);
[song7, graf7] = InfoMutua6c('guitarSolo.wav','Song07.wav');
plot(graf7);
xlabel('Song07.wav');
hold on;
subplot(3,3,8);
[song8, graf8] = InfoMutua6c('guitarSolo.wav','Song08.wav');
plot(graf8);
xlabel('Song08.wav');
hold on;
subplot(3,3,9);
[song9, graf9] = InfoMutua6c('guitarSolo.wav','Song09.wav');
plot(graf9);
xlabel('Song09.wav');
hold on;
disp("Informação Mútua Máxima");
Ordem_Dec = [song1,song2,song3,song4,song5,song6,song7,song8,song9];
Ordem_Dec = sort(Ordem_Dec,'Descend');
Ordem_Dec = Ordem_Dec(:);
Ordena_Mutua(Ordem_Dec,song1,song2,song3,song4,song5,song6,song7,song8,song9);



