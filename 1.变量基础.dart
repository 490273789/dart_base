late String description;
// 入口函数
void main(List<String> args) {
  // 接收运行dart文件传入的参数
  print('args: $args');

  // dart语言的特性：
  // 一切皆对象，所有的变量都是对象，null是对象，函数也是对象，所有的对象都是继承自Object。
  // 不支持public、protected、private关键字，通过_开头命名表示私有的变量，反之是公开的。

  // dart的数据类型
  // Numbers(int, double)  Strings(String) Boolean(bool) Lists Sets(Set)
  // Maps(Map) Runes Symbols(Symbol) null(Null)

  // 变量定义
  // 明确类型：String/int/double/bool/List/Map/Set/
  // 类型推到（关键字）：var/const/final/dynamic/
  // 使用var定义的变量name，会被自动推断为String类型
  // 虽然定义的时候没有指定类型，但是name变量已经初始化为一种数据类型了，就不能在将其他类型的数据赋值给他
  var name = 'dart';
  print('String: $name');

  // 变量命名
  // 1. 变量名称必须由数字、字母、下划线和美元符($)组成
  // 2. 下划线命名的变量为私有变量
  // 3. 不能为关键字和保留字

  // 如果这个字段的引用不局限于单一类型，可以指定为Object 或 dynamic类型
  Object text = 'dart';
  text = 1;
  print('Object $text');

  // 定义变量的类型可以改变
  dynamic text2 = 'dart';
  text2 = 2;
  print('dynamic $text2');

  int? age;
  age = 18;
  print('age.runtimeType: ${age.runtimeType}');

  /* 
   late
   声明一个非空变量，但不在声明时初始化
   延迟初始化一个变量
   late标记的变量在使用前没有被初始化，在变量使用时会抛出运行时异常
   */
  description = 'hello dart';
  print('late定义类型：$description');

  // final 和 const 定义常量不可修改
  // final变量的值是不能修改的
  final sex = '男';
  final int id = 1;
  print('final不指定类型：$sex');
  print('final指定int类型：$id');
  // 主要的区别
  // 1. final可以在运行时赋值，赋值后不可改变，还是运行时常量，并且final是惰性初始化，即在运行时第一次使用前才初始化
  // 2. 调用一个方法赋值的时候需要使用final，const是不支持的
  // 3. const变量的值在编译的时候就已经确定了，final不一定，可能需要运行时才能确定值。
  final time = new DateTime.now(); // 运行时才能确定值
  print('final运行时确定值：$time');

  const hobby = '打篮球';
  print('const: $hobby');
  // const time1 = new DateTime.new(); // 报错
  // print(time1);
}
