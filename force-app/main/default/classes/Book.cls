public class Book {
    string title;
    string author;
    decimal price;

    public Book(string title, string author, decimal price){
        this.title = title;
        this.author = author;
        this.price = price;


    }

    public void printDetails(){
        System.debug('title of book is ' +this.title);
        System.debug('author of book is ' +this.author);
        System.debug('price of book is ' +this.price);
    }

    public string getTitle(){
        return this.title;
    }
    public string getAuthor(){
        return this.author;
    }
    public decimal getPrice(){
        return this.price;
    }
    public void setPrice(decimal price){
        this.price = price;
    }
    public void setTitle(string title){
        this.title = title;
    }

}