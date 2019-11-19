close all; % Önceki figure'leri kapatmak için
[kir,sar,mav]=noktalar; % Fonksiyondan return edilen deðerleri bu üç deðiþkene at.
x=randi([-20,20],1,2);  % Yeni eleman için oluþma noktasý belirle.
plot(x(1,1),x(1,2),'*','color','black') % Yeni elemaný ekrana bastýr.
uzaklik=zeros(30,2); % Noktalarýn uzaklýklarýný hesaplamak için kullanýlacak matrisi oluþtur.


for k=[1:10] 
    uzaklik(k,1)=sqrt((x(1,1)-kir(k,1))^2+(x(1,2)-kir(k,2))^2); % Öklid baðýntýsý.
    uzaklik(k,2)=1; % Kýrmýzýdan geldiðini belirtmek için '1' deðerini at.
end
for k=[1:10]
    uzaklik(k+10,1)=sqrt((x(1,1)-sar(k,1))^2+(x(1,2)-sar(k,2))^2); % Öklid baðýntýsý.
    % 11'den devam etmesi için k deðiþkenine 10 ekle.
    uzaklik(k+10,2)=2; % Sarýdan geldiðini belirtmek için '2' deðerini at.
end
for k=[1:10]
    uzaklik(k+20,1)=sqrt((x(1,1)-mav(k,1))^2+(x(1,2)-mav(k,2))^2); % Öklid baðýntýsý.
     % 21'den devam etmesi için k deðiþkenine 20 ekle.
    uzaklik(k+20,2)=3;% Maviden geldiðini belirtmek için '3' deðerini at.
end

uzaklik=sirala(uzaklik); % Uzaklýklar Bubble Sort algoritmasý ile küçükten büyüðe sýralandý.
kontrol(uzaklik)