void main(List<String> args) {
  // 1、Set定义无序的唯一的集合，不能通过索引的方式取值
  // 应用比较少，常用List的去重
  // 定义Set
  Set<String> setData1 = {"set1", "set2", "set3"};
  // 添加元素
  setData1.add('set4');
  setData1.addAll({'set5', 'set6'});
  setData1.addAll(['set7', 'set8']);

  // 删除元素
  setData1.remove('set8');
  setData1.removeAll(['set6', 'set7']);

  print("setData1: $setData1");
  // var names = {}; // 这个是创建了一个map

  // set处理集合问题
  Set<num> set1 = {1,2,3,4,5};
  Set<num> set2 = {1,2,6,7,8};
  // 交集
  print('交集：${set1.intersection(set2)}');
  // 并集
  print('并集：${set1.union(set2)}');
  // 补集 
  print('补集：${set1.difference(set2)}');

  // 使用length属性来获取集合的数量
  print('The length of setData1: ${setData1.length}');

  // 创建一个编译时的常量集合，在set前添加const
  final constantSet = const {'a', 'b', 'c'};
  print('constantSet: $constantSet');

  //2、 Map 键值对的形式，键和值可以是任何类型的对象，键不能重复
  // 字面量定义Map {}
  // 使用new Map定义一个Map, new可以省略
  Map<String, dynamic> student = {'sex': '男'};
  // 添加或者修改键值对，key存在则是修改，key不存在则是添加
  student['name'] = 'wsn';
  student['id'] = 1;

  // 通过key来删除元素
  student.remove('sex');

  print('student: $student');
  print("student['name']: ${student['name']}");

  // 使用length属性获取Map的键值对数量
  print('The length of Map: ${student.length}');

  // 要创建一个编译时常量的映射，需要使用const关键字
  final constantMap = const {1: 'map1', '2': 'map2'};
  print('constantMap: $constantMap');

  // Map属性
  // keys 返回表示键的可迭代对象
  // values 返回表示值的可迭代对象
  // length 返回Map的大小
  // isEmpty 如果Map是空的则返回true
  // isNotEmpty 如果Map不是空，则返回true

  // Map方法
  // addAll() 将一个Map的所有键值对添加到当前map，无返回值。
  Map addAllMap = {'a': 'a', 'b': 'b'};
  addAllMap.addAll(constantMap);
  print('addAll() method: $addAllMap');

  // clear() 将当前的Map清空，无返回值。
  Map clearMap = {1: '1', 2: '2'};
  clearMap.clear();
  print('clear() method: $clearMap');

  // remove(key) 删除当前Map对应key的键值对，返回指定键对应的值
  // forEach(void f(key, value))
  addAllMap.forEach((key, value) => print('forEach() method: $key: $value'));


  // List和Set之间的相互转化
  // toSet()  List转Set
  // toList() Set转List

  // List和Map之间的相互转化
  // asMap() List转Map List的索引会转化为Map的key，List的元素会转化为Map的value
  List<String> listToMap = ['一', '二', '三', '四'];
  Map<num, String> fromList = listToMap.asMap();
  print('list to map: $fromList');
  
  // Map.fromIterables() 两个参数为可迭代对象，第一个参数会转化为Map的key，第二个对象转化为Map的value
  // 注意两个可迭代对象的长度要相同
  List<String> listToValue = ['一', '二', '三', '四'];
  Set<int> setToKey = {1,2,3,4,};
  Map<int, String> iterableMap= Map.fromIterables(setToKey, listToValue);
  print('Map.fromIterables: $iterableMap');

  // Map可以通过values和keys分别得到可迭代的对象，在通过toSet()方法和toList()方法分别转化为List和Set
}
