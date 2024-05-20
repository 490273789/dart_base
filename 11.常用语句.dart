void main(List<String> args) {
  // if, switch case,  for, for..in, while, do...while 和js 中相同
  // 循环控制语句
  // break语句：用于将控件从构造中取出，在循环语句中使用会让程序退出循环
  // continue语句：跳过当前迭代中的后续语句，并将控制权带回循环的开头
  // 使用标签控制流程
  // 标签只是一个标识符，后跟冒号(:)应用于语句或代码快。标签可以与断点一起使用，并继续更精确的控制流程。
  // continue或break语句与其标签名称之间不允许换行，此外，标签名称和关联循环之间不应该有任何其他语句。
  // 示例：
  // outerLoop:
  // for (var i = 0; i < 5; i++) {
  //   print('InnerLoop: i = $i');
  //   innerLoop:
  //   for (var j = 0; j < 5; j++) {
  //     if (j > 3) break;

  //     if (j == 2) break innerLoop;

  //     if (i == 4) break outerLoop;
  //   }
  // }

  A a = A('b', 'c');

  X x = X('y', 'z');


  a..b = x.y..c = x.z;
  print('b: ${a.b}, c: ${a.c}');
}

class A {
  String b;
  String c;
  A(this.b, this.c);
}

class X {
  String y = 'y';
  String z = 'z';
  X(this.y, this.z);
}
