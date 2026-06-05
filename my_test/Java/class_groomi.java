class Person{
    String name;
    Person(String name){
        this.name = name;
    }
}

class Student extends Person{
    String check;
    Student(String name){
        super(name);
    }
}

public class Main{
    public static void main(String[] args){
        Person p = new Student("홍길동");

        Student s = (Student)p;        
        s.name = "김구름";
        s.check = "체크요";
        System.out.println("이름: " + s.name);
        System.out.println("체크: " + s.check);
    }
}
/*
이름: 김구름
체크: 체크요
*/
