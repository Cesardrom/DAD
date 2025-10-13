void main(){
  int array_sum(List numbers){
    int result = 0;
    for (int number in numbers){
      result += number;
    }
    return result;
  }
  print(array_sum([2, 4, 6]));
}