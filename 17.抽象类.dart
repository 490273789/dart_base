void main(List<String> args) {}
// 我们在定义很多通用接口的时候，我们通常会让调用者传入父类，通过多态来实现更加灵活的调用方式。
// 父类本身可能并不需要对某些方法进行具体的实现，所以父类中的方法，可以定义为抽象方法
// 抽象方法：在dart中没有具体实现的方法就是抽象方法
// 抽象方法必须存在于抽象类中，抽象类是通过abstract声明的类

// 1. 抽象类，抽象类不能被实例化
// 2. 抽象类中可以定义成员变量和成员方法
// 3. 抽象类中可以定义抽象方法，只有方法的定义没有方法的实现
// 4. 主要作用： 多态的实现
// 5. 可以借助工厂构造方法来实例化派生类的对象

abstract class Doer {
  void action () {
    doSomething();
    logic();
  }

  //定义一个抽象方法
  void doSomething();

  void logic() {
    print('logic1');
  }

  // factory Doer([String? message]) => EffectiveDoer(message);
}

// extents只能继承一个类
// 对于继承来说，派生类只需要实现抽象方法即可
class EffectiveDoer extends Doer {
  String? message;
  EffectiveDoer(this.message):super();

  void doSomething() {
    // 提供实现方法
  }


}
