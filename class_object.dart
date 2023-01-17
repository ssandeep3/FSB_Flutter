class student{
    var rollno;
    var name;
    var branch;
    // student();
    student(var rn, var nm, var br){
        this.rollno = rn;
        this.name = nm;
        this.branch = br;
    }
    void setValues(var rn, var nm, var br){
        this.rollno = rn;
        this.name = nm;
        this.branch = br;
    }
    void getValue(){
        print("${this.rollno} ${this.name} ${this.branch}");
    }
    void overFun(){
        print("Inside the super class...");
    }
}
class CSE_Class extends student{
    var CGPA;
    // CSE_Class(rn, nm, br, cg):super(rn, nm, br);
    CSE_Class(rn, nm, br, cg):super(rn, nm, br){
        this.CGPA = cg;
    }
    void setCGPA(var c){
        this.CGPA = c;
    }
    void getCGPA(){
        print("${this.CGPA}");
        super.overFun();
    }
    void overFun(){
        print("Inside the sub class...");
    }
}
void main(){
    student s = new student("","","");
    s.rollno = "19CSU002";
    s.name = "Aman";
    s.branch = "CSE";
    print("${s.rollno} ${s.name} ${s.branch}");
    // student s1 = new student();
    // s1.setValues("19CSU003", "Amit", "CSE");
    // s1.getValue();
    // student s2 = new student("18ECU001", "Sunil", "ECE");
    // s2.getValue();
    CSE_Class s3 = new CSE_Class("20CSU003","Sita","CSE", 8.98);
    // s3.setValues("20CSU003","Sita","CSE");
    // s3.setCGPA(8.9);
    s3.getValue();
    s3.getCGPA();
}