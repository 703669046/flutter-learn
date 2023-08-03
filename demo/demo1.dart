// main(){
//   print('你好，dart');
// }

class Person {
  int age = 10;
  // 默认构造函数
  Person() {
    print('函数里的构造函数，实例化对象候触发');
  }
  void printInfo() {
    print("${this.age}");
  }
}

// 带void表示main没有返回值；
void main() {
  print('你好，dart');

// 定义常量
  // const PI = 33;
  // final PII = 55;
  // final date = DateTime.now();
  // print(date);

  // 常用数据类型
  // Number数值：int double
  // String 字符串
  // List 数组
  // Map 字典

  String str1 = """fsfefsefesfs
  sefesfsef
  sefesf
""";
  String str2 = '''fsfefsefesfs
  sefesfsef
  sefesf
''';
  // print(str2);
  // 字符串拼接
  // String str3 = "尼玛";
  // String str4 = "Dart";
  // print("$str3 $str4");

  // var l1 = ['sdf', false, 32];
  // var l2 = <String>['23', 'dfs'];
  // print(l2);

  // var l3 = List.filled(3, "fill");
  // print(l3);
  // l3[1] = '32';
  // l3[2] = 'false';
  // print(l3);

  // Map类型
  // var person = {"name": "二狗", "age": 50};
  // print(person['age']);
  var a1 = Person();
  a1.printInfo();
}
