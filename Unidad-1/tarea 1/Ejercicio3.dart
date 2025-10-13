void main(){
  String max(int a, int b, int c){
    if (a > b && a > c){
      return 'The high number is $a';
    } else if (b > a && b > c){
      return 'The high number is $b';
    } else if (c > a && c > b){
      return 'The high number is $c';
    }
    return "Have same numbers";
  }
  print(max(1, 2, 3));
  print(max(4, 2, 3));
  print(max(1, 4, 3));
  print(max(1, 3, 3));
}