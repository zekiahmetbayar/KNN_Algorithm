%Uzaklýklarýn sýralanmasý için Bubble Sort algoritmasý.

function [uzak]=sirala(uzak)
    for i=[1:30]
    for j=[1:30-i]
        if(uzak(j,1)>uzak(j+1,1))
            a=uzak(j,1);b=uzak(j,2);
            uzak(j,1)=uzak(j+1,1);uzak(j,2)=uzak(j+1,2);
            uzak(j+1,1)=a;uzak(j+1,2)=b;
        end
    end
end
end