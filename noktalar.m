function [kirmizi,sari,mavi]= noktalar

kirmizi=randi([-4,20],10,2); % 10x2'lik bir matrisi random sayýlarla doldur.(x,y)
% Ýç içe girmesi için -4'den baþladý.

for k=[1:10] %Satýr sayýsý.
    kirmizi(k,1)=kirmizi(k,1)*(-1); % Kýrmýzý noktalarýn 2. bölgede olmasý için x deðerlerini - ile çarp.
end

for k=[1:10] % Kýrmýzý noktalarý ekrana bastýr.
        plot(kirmizi(k,1),kirmizi(k,2),'o','MarkerFaceColor','red','MarkerEdgeColor','red')
        hold on % Bastýrýlan noktalarý ekranda tut.
end

sari=randi([-20,0],10,2); % 10x2'lik bir matrisi random sayýlarla doldur.
                          % 3. Bölgede olmasý için -20 ile 0 arasýnda oluþtur.
                          
for s=[1:10] % Sarý noktalarý ekrana bastýr.
        plot(sari(s,1),sari(s,2),'o','MarkerFaceColor','yellow','MarkerEdgeColor','yellow')
        hold on % Bastýrýlan noktalarý ekranda tut.
end

mavi=randi([0,20],10,2); % 10x2'lik bir matrisi random sayýlarla doldur.(x,y)

for m=[1:10] % Mavi noktalarý ekrana bastýr.
        plot(mavi(m,1),mavi(m,2),'o','MarkerFaceColor','blue','MarkerEdgeColor','blue')
        hold on % Bastýrýlan noktalarý ekranda tut.
end

end
