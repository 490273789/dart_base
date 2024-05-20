void main(List<String> args) {
  // 定义List
  // 默认情况下List的长度是可变的
  List list1 = ['ws', 20, true];

  // 给List添加元素的四个方法
  list1.add('wsz');
  // 参数为可迭代对象，可以为Set或者List类型
  list1.addAll(['a', 'b', 'c']);
  list1.insert(1, 'e');
  list1.insertAll(2, ['f', 'g']);

  // 删除List中的元素
  list1.removeAt(1);
  list1.remove('wsn');

  // 修改元素
  list1[1] = 'wsz';

  // 访问元素
  print('访问list1元素：${list1[1]}');
  print('list1：$list1');
  print('list1.length：${list1.length}');
  var res2 = list1.singleWhere((element) => element == 30, orElse: () => null);
  print('res:$res2');
  // 指定集合类型
  List<String> list2 = ['w', 's', 'n'];
  print('list2指定集合类型：$list2');

  // 创建一个固定长度的集合, 可修改，但是不能增加数据
  var list4 = List<String>.filled(3, '');
  print('list4修改前：$list4');
  list4[0] = 'w';
  print('list4修改后：$list4');

  // 对于非固定长度的集合可以用 list.length = 0来清空数组

  // 2.3引入 扩展运算符...
  // 2.3引入 空值感知扩展运算符 ...?如果运算符右侧的表达式可能为null，可以使用它来避免异常
  // 使用扩展运算符将列表的所有元素插入另一个列表
  List<num> list5 = [1, 2, 3, 4];
  List<num> list6 = [0, ...list5];
  print('扩展运算符的使用-list6: $list6');

  // 2.3 引入了if和collection的集合，使用if条件和for循环构建集合
  // if条件
  bool isAdd = true;
  List list7 = ['1', '2', if (isAdd) '3'];
  print('if条件-list7: $list7');

  // 使用for in循环可以遍历List
  List list8 = [1, 2, 3];
  List list9 = ['0', for (var i in list8) '$i'];
  print('for循环-list9: $list9');

  // 去重
  List<int> list10 = [1, 2, 3, 4, 4, 3, 2, 1];
  List<int> list11 = List.from(Set.from(list10));
  List<int> list12 = [...Set.from(list10)];
  print('去重List.from: $list11');
  print('去重...: $list12');

  // List的属性
  // first 返回第一个元素
  // isEmpty 如果集合没有元素则返回true
  // isNotEmpty 如果集合至少包含一个元素，则返回true
  // length 返回列表的大小

  // List的方法
  // last() 返回列表中最后一个元素
  // reversed() 以相反的顺序返回包含列表值的可迭代对象
  // single() 检列表是否只有一个元素并返回它
  // add() 可变列表可以在运行时动态增长，此方法在List的尾部增加一个元素，并返回修改后的List对象
  // addAll() 参数为一个List
  // insert(index, value) 在List的置顶位置添加值
  // insertAll(index, List) 在List的指定位置添加列表中的值
  // replaceRange(startIndex, endIndex, iterable<items>) 替换指定范围内的元素的值
  // remove(value) 删除列表中第一次出现的指定项，如果成功的从列表中删除指定项，则返回true
  // removeAt(index) 删除指定索引处的值并返回他
  // removeLast() 弹出并返回List中的最后一项
  // removeRange(startIndex, endIndex) 删除指定范围内的项目


}
