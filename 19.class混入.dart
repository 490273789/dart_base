void main(List<String> args) {
  final f = F();
  f.printD();
  f.printE();

  final g = G('猫', 2);
  g.run();
  g.printD();
  g.printE();
}

// mixins 可以实现类似多继承的功能
// 作为mixins的类只能继承自Object，不能继承其他类
// mixins的类不能有构造函数
// 一个类可以mixins多个mixins类
// mixins不是继承，也不是接口，是一种新特性
// 重复的成员变量和成员方法，根据混入的顺序，后面会覆盖前面的

// 继承只能继承1个类
// 实现可以实现多个类，但是实现的方法都必须重写
// 混合可以混合多个类，可以重写，也可以不重写直接用

mixin D {
  String info = "this is D";
  void printD() {
    print('D');
  }
}

mixin E {
  void printE() {
    print('E');
  }
}

class Animal {
  String? name;
  num? count;
  Animal(this.name, this.count);
  printInfo() {
    print('${this.name} ---- ${this.count}');
  }

  void run() {
    print('${this.name} running');
  }
}

// 使用with 关键字实现mixins
class F with D, E {}

// 即继承Animal 又 mixins D 和 F，with后面跟的类有顺序之分，后面的方法会覆盖前面类的方法
class G extends Animal with D, E {
  G(String name, num count) : super(name, count);

  @override
  void printE() {
    print('重写了E的printE方法');
  }
}

// 用来限定可以使用改mixin的类型
// 混入类之间也可以使用 on 关键字产生类似于继承的关系
// 比如下面Site只能在B及其衍生类中被混入
mixin Position {
  List<int> center = [0,0];
}

mixin Site on Position {
  int x = 0;

  void move () {
    x = center[0];
  }
}
