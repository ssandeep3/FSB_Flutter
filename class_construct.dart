class board{
	var l, b;
	board(){
		this.l = 0;
		this.b = 0;
	}
    board.set(ll, bb){
        this.l = ll;
        this.b = bb;
    }
	String toString(){
		return "l = ${this.l} b = ${this.b}";
	} 
    int area([int ll=0, int bb=0]){ 
        if(ll!=0 || bb!=0){
            return ll*bb;
        }
        return l*b;
    }
}
void main(){
    board bd = new board();
    print("$bd");
    board bd1 = new board.set(20, 30);
    print("$bd1");
    var r = bd1.area();
    var r1 = bd1.area(10,20);
    print("$r and $r1");
}