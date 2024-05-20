void main(List<String> args) {
  // Object locale = 'wsn';
  // print('locale: ${locale.length}'); //报错
  String locale1 = 'wsn';
  print('locale: ${locale1.length}');
  dynamic locale2 = 'wsn';
  print('locale: ${locale2.length}');

  // 尽量少的使用dynamic，会存在类型危险
}
// dart中的所有类都继承自Object
