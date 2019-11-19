close all; % �nceki figure'leri kapatmak i�in
[kir,sar,mav]=noktalar; % Fonksiyondan return edilen de�erleri bu �� de�i�kene at.
x=randi([-20,20],1,2);  % Yeni eleman i�in olu�ma noktas� belirle.
plot(x(1,1),x(1,2),'*','color','black') % Yeni eleman� ekrana bast�r.
uzaklik=zeros(30,2); % Noktalar�n uzakl�klar�n� hesaplamak i�in kullan�lacak matrisi olu�tur.


for k=[1:10] 
    uzaklik(k,1)=sqrt((x(1,1)-kir(k,1))^2+(x(1,2)-kir(k,2))^2); % �klid ba��nt�s�.
    uzaklik(k,2)=1; % K�rm�z�dan geldi�ini belirtmek i�in '1' de�erini at.
end
for k=[1:10]
    uzaklik(k+10,1)=sqrt((x(1,1)-sar(k,1))^2+(x(1,2)-sar(k,2))^2); % �klid ba��nt�s�.
    % 11'den devam etmesi i�in k de�i�kenine 10 ekle.
    uzaklik(k+10,2)=2; % Sar�dan geldi�ini belirtmek i�in '2' de�erini at.
end
for k=[1:10]
    uzaklik(k+20,1)=sqrt((x(1,1)-mav(k,1))^2+(x(1,2)-mav(k,2))^2); % �klid ba��nt�s�.
     % 21'den devam etmesi i�in k de�i�kenine 20 ekle.
    uzaklik(k+20,2)=3;% Maviden geldi�ini belirtmek i�in '3' de�erini at.
end

uzaklik=sirala(uzaklik); % Uzakl�klar Bubble Sort algoritmas� ile k���kten b�y��e s�raland�.
kontrol(uzaklik)