// 级联运算符(..)
class Student {
  void method1() {
    print('我是方法1');
  }

  void method2() {
    print('我是方法2');
  }
}

void main() {
  int a = 13;
  int b = 5;

  // 算数运算符
  // 注意的是对于浮点型的运算会有精度的损失问题，这是浮点型本身的问题，任何语言都无法避免。
  print('a:$a, b:$b');
  print('+ 加：${a + b}'); // 加
  print('- 减：${a - b}'); // 减
  print('* 乘：${a * b}'); // 成
  print('/ 除：${a / b}'); // 除
  print('% 余：${a % b}'); // 取余
  print('~/ 商：${a ~/ b}'); // 取整

  // 关系（条件）运算符
  print('a:$a, b:$b');
  print('a == b: ${a == b}'); // 是否相等
  print('a != b: ${a != b}'); // 是否不相等
  print('a < b: ${a < b}'); // 小于
  print('a > b: ${a > b}'); // 大于
  print('a <= b: ${a <= b}'); // 小于等于
  print('a >= b: ${a <= b}'); // 大于等于

  bool isTrue = true;
  bool isFalse = false;

  // 逻辑运算符 && ||  !
  print("逻辑运算符 ！：${!isTrue}"); // 取反

  // && 都为true才为true
  // print(isFalse && isTrue);
  // || 有一个为true就为true
  print(isFalse || isTrue);

  // 赋值运算符 =
  String str1 = "";
  print("赋值运算符");
  str1 = "2";
  print(str1);

  //避空运算符 a??=2  当a为空的时候吧2赋值给a
  int? num1;
  num1 ??= 23;
  print(num1);

  // 级联运算符，使用级联运算符每次都返回 new Student()实例
  // 一个点是连续调用，两个点是多次调用
  // 等同于 new Student().method1(); new Student().method2();
  new Student().method1();
  new Student().method2();
  // 和上面的两行代码相等
  new Student()
    ..method1()
    ..method2();

  // 注意dart的条件只能是布尔类型的，不能是其他类型，没有js的类型强制转换比如 null为false
  // ?. 条件访问属性，跟js一样

  // 三目运算符  和js一样

  // switch 和js一样

  // a = n ?? m  n为空的时候赋值m

  // += -= *= /= %= ~/=

  // 类型判定符
  // as 将对象强制转化为特定的类型

  // is 类型判断

  // is! 类型判断

  String? res = null;
  String? res2 = null;

  String res1 = res ?? '${res2 ?? '3000'}';

  print('res1:$res1');
}
