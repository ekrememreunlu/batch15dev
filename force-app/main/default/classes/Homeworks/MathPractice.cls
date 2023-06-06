public class MathPractice {
    public decimal practiceOne(decimal a, decimal b) {
        decimal cevreDiktortgen = 2*(a+b);
        return cevreDiktortgen;
    }

    public decimal practiceTwo(decimal b, decimal k){

        decimal vki = k/(b*b);
        return vki;
    }

    public decimal practiceThree(integer x, integer y){
        decimal ort = (x + y) /2.0;
        return ort;
    }

    public string practiceFour(decimal deger){
        string mesaj;
        if(deger <=0){
            mesaj ='Hatali bir deger girdiniz';
        }else if(deger < 50){
            mesaj ='Bonus kazanamadiniz';
        }else if (deger < 200) {
            mesaj = deger + '$' +' tutarindaki alisveris karsiliginda 10$ bonus kazandiniz';
        }else if (deger < 500) {
            mesaj = deger + '$' +' tutarindaki alisveris karsiliginda 30$ bonus kazandiniz';
        }else if(deger >= 500) {
            mesaj = deger + '$' +' tutarindaki alisveris karsiliginda 50$ bonus kazandiniz';
        }
        return mesaj;
    }
    public decimal practiceFive(string yemek, integer adet){

        decimal tutar;
        switch on yemek {
            when  'EKMEK' {
                tutar = 1*adet;
            }
            when 'SİMİT' {
                tutar = 2*adet;
            }
            when 'KEK' {
                tutar =3*adet;
            }
            when else {
                System.debug('hatali girdiniz');
            }
        }
        system.debug('Almis oldgunuz ' + adet + ' adet ' + yemek + ' tutari ' + tutar + ' $ dir' );
        
        return tutar;
        
    }

    public void practiceSix(decimal x, decimal y, string parametre){
        decimal alan = x*y;
        decimal cevre = 2*(x+y);

        switch on parametre {
            when 'alan'  {
                System.debug('Diktortgenin alani: ' +alan);
            }
            when 'cevre' {
                System.debug('Dikdortgenin cevresi: ' +cevre);
            }
            when else {
                System.debug('Lutfen gecerli bir islem giriniz...');
            }
        }
    }

    public string practiceSeven(decimal boy, decimal kilo){
        
        decimal vki = kilo/boy.pow(2);
        decimal vki2 = vki.setScale(1);

        string indeks;
        if (vki2>=0 && vki2<=18.4) {
            indeks ='Zayif';
        }else if (vki2<=24.9){
            indeks = 'Normal';
        }else if (vki2<=29.9){
            indeks = 'Kilolulu';
        }else if(vki2<0 || vki2>=30){
            indeks = 'Hatali deger girdiniz.';
        }
        System.debug('Vucut kitle indeksiniz: ' +vki2 + '===>' +indeks);
        return indeks;
    }
    public integer practiceEight(integer x, integer y){
        integer sum = 0;
        if (x != y) {
            for (Integer i = x; i <= y; i++) {
                sum = sum +i;
            }
        }else if(x==y){
            sum = x+y;
        }
        return sum;
    }
}