function kontrol(uzaklik)
    kirmizilar=0;sarilar=0;maviler=0; % Ýlklendirmeler yapýldý.
    for komsular=[1:3] % En yakýn 3 komþuya bak.
        
        switch(uzaklik(komsular,2)) % En çok komþunun kim olduðunu bul.
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
    
    maksimum=kirmizilar; % En büyüðünü bulma kod bloðu.
    secilen='kýrmýzý';
    if(maksimum<sarilar)
        maksimum=sarilar;
        secilen='sarý';
    elseif(maksimum<maviler)
        maksimum=maviler;
        secilen='mavi';
    end
    
     cevap = sprintf("%s",secilen) % En çok uyuþan sýnýfý ekrana bastýr.
    
end