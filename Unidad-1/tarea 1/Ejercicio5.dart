void main(){
  String presentation(String name, [int age = 0]){
    return 'Hello my name is $name and i have $age years old';
  }
  print(presentation('Jesus'));
  print(presentation('Jesus', 20));
}