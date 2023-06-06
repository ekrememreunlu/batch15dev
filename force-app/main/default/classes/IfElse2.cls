public with sharing class IfElse2 {
    //1.	String olarak girilen istanbul telefon numaralarinin Avrupa yakasina mi Anadolu yakasina mi ait oldugunu donen bir metot yazin? 10 hane oldugunu control ettikten sonra cozume gecelim..
    public string phone(string phoneNumber) {
        //once parametrenin 10 haneli olup olmadigini kontrol edip oyle kodu yazalim..
         integer hanesayisi = phoneNumber.length();
         string message; 
         if (hanesayisi == 10 && phoneNumber.isNumeric() == true) {
            //gelen telefon numarasinin ilk 3 hanesini alirim..
            string kod = phoneNumber.substring(0, 3);          
            //3 tane coditional olacak..
            if (kod == '212') {
                message = phoneNumber + ' numarasi Avrupa yakasina ait bir numaradir';
            } else if (kod == '216') {
                message = phoneNumber + ' numarasi Anadolu yakasina ait bir numaradir';
            } else {
                message = phoneNumber + ' numarasi baska ile ait bir numaradir';
            }

         } else {
            message = 'Eksik veya yanlis bir numara girdiniz. Girdiginiz numara 10 haneli olmali ve basinda 0 olmamali..';
         }
         return message;
        
    }

}