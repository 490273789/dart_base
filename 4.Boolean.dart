void main(List<String> args) {
  // true 和 false
  bool flag = true;
  print('flag: $flag');

  // 条件判断
  // dart里没有非空即真，不你能用其他的类型值当做真假判断
  // String a = 'a'
  // if(a)  错误的
  // if(a != null) 需要这样写
  int num1 = 1;
  int num2 = 2;
  if (num1 == num2) {
    print('a==b');
  } else {
    print('a!=b');
  }
}
