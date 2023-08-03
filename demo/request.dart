import 'dart:io';
import 'dart:convert';

class Person3 {
  String name;
  int age;
  Person3({required this.name, required this.age});
  String getName() {
    return "${this.name}--${this.age}";
  }
}

void main() async {
  var result = await getDataFormZhihuAPI();
  // print(result);

// 类型后面跟问号表示可空类型
  String? username = "123";
  username = null;
  // ！类型断言
  String? str = "this is Str";
  str = null;
  // print(str!.length); //类型断言：吐过str不等于null 会打印str的长度，等于null则抛出异常

  Person3 p3 = new Person3(name: '张三', age: 33);

  print(p3.getName());
}

getDataFormZhihuAPI() async {
  var httpCLient = new HttpClient();
  var url = Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
  var requset = await httpCLient.getUrl(url);
  var response = await requset.close();
  return await response.transform(utf8.decoder).join();
}
