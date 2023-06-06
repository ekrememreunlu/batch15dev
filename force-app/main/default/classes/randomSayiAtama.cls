public class randomSayiAtama {
    // Parametre olarak integer bir değer alan bir metot yazın. Bu metot içinde; Bilgisayar 0'dan 10'a kadar rastgele bir sayı oluşturacak. parametre ile bilgisayarın oluşturduğu sayıyı karşılaştıracak esitse  'dogru tahmin kazandiniz', degilse 'yanlis tahmin tekrar deneyin' mesaji dönecek.
    public static integer oyunSayisi = 0;
    public static integer skorum = 0;
    public static string randomNumber(integer sayi){
        string message;
        Integer bilgisayarSayisi = math.round(math.random()*10);
    
    if (sayi >=0 && sayi <=10) {
        oyunSayisi++;
        System.debug('=======================' +oyunSayisi + '. oyun ===============');
        if (bilgisayarSayisi == sayi) {
            skorum++;
            message = 'Dogru tahmin';
        } else {
            message = 'yanlis tahmin';
        }
        
    } else {
        message = 'Lutfen 0\'dan 10a kadar bir sayi girin';
    }
    System.debug('Bilgisayarin sayisi = ' + bilgisayarSayisi);
    System.debug('Benim sayim = ' +sayi);
    System.debug(oyunSayisi + ' oyun oynadiniz..dogru tahmin= '+skorum);
    return message;
    }
    
}