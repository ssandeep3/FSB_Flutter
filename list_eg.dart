void main(){
    List l = [1,2,3,4];
    print(l.elementAt(2));
    var s = {"Jan","Feb","Mar"};
    print(s.length);
    var m = <int, String>{0:"Sun",1:"Mon",2:"Tue"};
    m[2] = "Fri";
    m[3] = "Wed";
    print(m);
}