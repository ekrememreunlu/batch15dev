public class Circle {
    decimal radius;
    string color;

    public Circle(){

    }
    public Circle(decimal radius){
        this.radius = radius;
    
    }

    public Circle(decimal radius, string color){
        this.radius = radius;
        this.color = color;

    }
    public Decimal getRadius(){
        return this.radius;
    }
    public void setRadius(decimal radius){
        this.radius = radius;
    }
    public string getColor(){
        return this.color;
    }
    public void setColor(string color){
        this.color = color;
    }

    public decimal calculateArea(){
        decimal a1 = math.pi*this.radius*this.radius;
    
        return a1.setScale(2);
        
    }

    public decimal calculateCircumference(){
        decimal c1 = 2*math.pi*this.radius;
        return c1.setScale(2);
    }
}