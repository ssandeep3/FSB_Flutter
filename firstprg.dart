import 'dart:io';
void main(){
    print("Hello world");
    var a = 100;
    var b = 200;
    // var c = a.toString() + b.toString();
    var c = a + b;
    var s1 = "New ";
    var s2 = "Delhi";
    print(c);
    print(s1+s2);
    var n;
    // n=1000;
    print(n.runtimeType);
    String s = "NCU Exam System..";
    print(s.substring(1,5));
    s = """k
    j""";
    print(s);
    int name = 123;//"NCU";
    print("The University name is: ${name + name}");
    print("Length of s = ${s.length}");
    var rel = true;
    print("rel=$rel and the type is: ${rel.runtimeType}");
    bool var1;
    var1 = false;
    print("$var1 type is: ${var1.runtimeType}");
    final double pi = 3.14;
    // pi = 3.1418;     //ERROR
    var e1;
    print(e1??"hello");
    e1 = 101;
    if(e1%2==0){
        print("$e1 is even");
    }
    else{
        print("$e1 is odd");
    }
    for(var n = 1; n<=100; n+=1){
        print(n);
    }
    var aa=0;
    while(aa < 10){
        
        aa += 1;
        if(aa==7){
            continue;
        }
        print(":inside do-while loop $aa");
    }
    print(fun2(-4,checkno));
    print(fun2(0, notoday));
    print("Enter your name?");
    // String? name1 = stdin.readLineSync();
    // print("Hello, $name1! \nWelcome to GeeksforGeeks!!");

    int? mno = parseInt(stdin.readLineSync());
    print(mno);

}

fun1(){
    print("From function fun1...");
}
int product({a=9,b=6})=> a-b;
String notoday(day){
    switch (day){
        case 0: {return "Sun";}
        case 1: {return "Mon";}
        case 2: {return "Tue";}
        case 3: {return "Wed";}
        case 4: {return "Thu";}
        case 5: {return "Fri";}
        case 6: {return "Sat";}
        default: {return "Wrong no.";}
    }
}
String fun2(int n, Function nday){
    return nday(n);
}
String checkno(day){
    if(day<0){
        return "Negative no.";
    }
    return "Positive no.";
}