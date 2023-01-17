abstract class human{
    var name;
    void printName();
}
class student extends human{
    void printName(){
        print("${this.name}");
    }
    void setName(String nm){
        this.name = nm;
    }
}
void main(){
    student s = new student();
    s.setName("ABC");
    s.printName();
}