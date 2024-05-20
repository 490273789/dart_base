void main() {
  // Iterable<int> numbers = [1, 2, 3, 4, 5];
  // int number = numbers.where((number) => number == 3).first; 
  // print(number);
  // numbers.any((element) => element == 3);

 List a = [0,1,2,3];
 a.removeRange(1, a.length);
 print("a: $a");
}