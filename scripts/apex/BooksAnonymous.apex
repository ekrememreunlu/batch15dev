List<Books> bookList = new List<Books>();
Books book1 = new Books();
book1.setKitapAdi('Safahat');
book1.setYazar('Mehmet Akif Ersoy');
book1.setFiyat(15);
System.debug('book1: ' +book1);

System.debug(book1.getKitapAdi());
bookList.add(book1);

Books book2 = new Books();
book2.setYazar('Ahmet Hamdi Tanpinar');
book2.setFiyat(10.5);
book2.setKitapAdi('Huzur');
System.debug(book2);
bookList.add(book2);


book2.details();
books.toplamKitapSayisi();

System.debug(bookList);

System.debug('=======kitaplar ayri ayri=========');
for (books book : bookList) {
    System.debug(book);
    System.debug('kitap adi: ' +book.getKitapAdi());
    System.debug('yazar: ' +book.getYazar());
}
