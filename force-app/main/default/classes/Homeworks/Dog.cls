public class Dog {
    String name;
    String color;
    Integer age;

    public Dog() {
        age = 1;
        checkAge();
    }

    public Dog(String n, String c, Integer a) {
        name = n;
        color = c;
        age = a;
        checkAge();
    }

    public void checkAge() {
        if (age >= 0 && age <= 1) {
            System.debug('Puppy Dog');
        } else if (age > 1 && age <= 3) {
            System.debug('Young Dog');
        } else if (age > 3 && age <= 5) {
            System.debug('Adult Dog');
        } else {
            System.debug('Old Dog');
        }
    }
}