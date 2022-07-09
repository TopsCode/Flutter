void main() {
int geek = 10;
try{
	var geek2 = geek ~/ 0;
	print(geek2);
}
catch(e){
	print(e);
}
finally {
	print("Code is at end, Geek");
}
}
