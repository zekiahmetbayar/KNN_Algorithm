function [kirmizi,sari,mavi]= noktalar

kirmizi=randi([-4,20],10,2); % 10x2'lik bir matrisi random say�larla doldur.(x,y)
% �� i�e girmesi i�in -4'den ba�lad�.

for k=[1:10] %Sat�r say�s�.
    kirmizi(k,1)=kirmizi(k,1)*(-1); % K�rm�z� noktalar�n 2. b�lgede olmas� i�in x de�erlerini - ile �arp.
end

for k=[1:10] % K�rm�z� noktalar� ekrana bast�r.
        plot(kirmizi(k,1),kirmizi(k,2),'o','MarkerFaceColor','red','MarkerEdgeColor','red')
        hold on % Bast�r�lan noktalar� ekranda tut.
end

sari=randi([-20,0],10,2); % 10x2'lik bir matrisi random say�larla doldur.
                          % 3. B�lgede olmas� i�in -20 ile 0 aras�nda olu�tur.
                          
for s=[1:10] % Sar� noktalar� ekrana bast�r.
        plot(sari(s,1),sari(s,2),'o','MarkerFaceColor','yellow','MarkerEdgeColor','yellow')
        hold on % Bast�r�lan noktalar� ekranda tut.
end

mavi=randi([0,20],10,2); % 10x2'lik bir matrisi random say�larla doldur.(x,y)

for m=[1:10] % Mavi noktalar� ekrana bast�r.
        plot(mavi(m,1),mavi(m,2),'o','MarkerFaceColor','blue','MarkerEdgeColor','blue')
        hold on % Bast�r�lan noktalar� ekranda tut.
end

end
