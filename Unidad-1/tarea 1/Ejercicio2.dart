void main(){
  String greet(String name ,[String surname= ""]) {
    return 'Hello $name $surname. Good Morning!';
  }
  print(greet("Cesar", "Domínguez" ));
  print(greet("Cesar" ));
}
