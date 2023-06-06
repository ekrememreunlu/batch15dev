public class deneme {
    public void method1(){
      System.debug('merhaba dunya');

    }
    public void method2(integer x, integer y){
        integer sum = x+ y;

        System.debug('Sum : ' + sum);

    }

    public void method3(string fullname, integer age){
        System.debug('Fullname: ' +fullname + ' Age: ' +age);
    }

    public integer toplam(integer x, integer y){
        integer top = x + y;
        System.debug('toplam ' +top);
        return top;
    }
}