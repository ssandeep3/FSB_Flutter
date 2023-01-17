void main(){
    var m = <int, String>{1:"CSE", 2:"ECE", 3:"ME", 4:"CV", 5:"EEE", 6:"SOM", 7:"SOL"};
    print("${m[4]}");    
    m.forEach( (k,v){
        print("$k = $v");
    } );
    var l = <int>[4,6,8,9];
    l.forEach((item)=>print("$item"));
}