function kontrol(uzaklik)
    kirmizilar=0;sarilar=0;maviler=0; % �lklendirmeler yap�ld�.
    for komsular=[1:3] % En yak�n 3 kom�uya bak.
        
        switch(uzaklik(komsular,2)) % En �ok kom�unun kim oldu�unu bul.
            case 1
            kirmizilar=kirmizilar+1;
            case 2
            sarilar=sarilar+1;
            case 3
            maviler=maviler+1;
            otherwise
                fail = sprintf("failed.")
        end 
    end
    
    maksimum=kirmizilar; % En b�y���n� bulma kod blo�u.
    secilen='k�rm�z�';
    if(maksimum<sarilar)
        maksimum=sarilar;
        secilen='sar�';
    elseif(maksimum<maviler)
        maksimum=maviler;
        secilen='mavi';
    end
    
     cevap = sprintf("%s",secilen) % En �ok uyu�an s�n�f� ekrana bast�r.
    
end