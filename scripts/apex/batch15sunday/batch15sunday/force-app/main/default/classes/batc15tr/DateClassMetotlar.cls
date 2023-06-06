public class DateClassMetotlar {
    public void tarihOlusturma() {
        date date1 = date.newInstance(2022, 11, 22);
        System.debug(date1);
        Integer yil = 2001;
        Integer ay = 5;
        Integer gun = 17;
        date date2 =date.newInstance(yil, ay, gun);
        System.debug(date2);

    }
    public void tarihMesaji(){
        date bugun = date.today();
        integer buyil = bugun.year();
        integer buay = bugun.month();
        integer gun = bugun.day();
        date yeniyil = date.newInstance(2023, 12, 31);
        integer kalangunsayisi = bugun.daysBetween(yeniyil);

        string mesaj = buyil + ' yilinin ' + buay +'. ayinin ' +gun + '. gunundeyiz. Yeni yila ' + kalangunsayisi +' gun var.';
        System.debug(mesaj);

    }
}