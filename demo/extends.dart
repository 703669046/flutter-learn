class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void printInfo() {
    print("：${this.name}-----：${this.age}");
  }
}

class Web extends Person {
  Web(String name, int age, String sex) : super(name, age);
  run() {
    print("姓名：${this.name}---------年龄：${this.age}");
  }

  // 复写父类方法
  @override
  void printInfo() {
    print("：${this.name}-----：${this.age}");
  }
}

void main() {
  Web w1 = new Web('滴滴', 858, '未知');
  w1.printInfo();
  w1.run();
}
