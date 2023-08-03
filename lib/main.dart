import 'package:flutter/material.dart';

void main() {
    runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              '首页',
              style: TextStyle(fontSize: 14.0,color:Colors.cyanAccent),
            ),
          ),
        //   body: const MyApp()
        body: const Column(
            children: [
                MyApp(),
                MyButton(),
                MyText()
            ]
        ),
        )
      )
    );
}


class MyApp extends StatelessWidget { 
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 200,
            height: 100,
            alignment: Alignment.center,  //内容显示位置
            margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
            // transform: Matrix4.translationValues(-40, 50, 0),
            // transform: Matrix4.rotationZ(0.5),//旋转
            transform: Matrix4.skewY(3),

            decoration: BoxDecoration(
                color: Colors.pink ,
                border: Border.all(    //边框
                    color: Color.fromARGB(255, 21, 235, 67),
                    width: 2
                ),
                borderRadius: BorderRadius.circular(10),   // 圆角
                boxShadow:const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 15.0
                    )
                ],
                gradient: LinearGradient(colors: [Colors.yellow,Colors.blue]),//线性渐变
                // gradient: const RadialGradient(colors: [Colors.yellow,Colors.blue])
            ),
            child: const Text("你好Flutter",style: TextStyle(color: Colors.white,fontSize: 30,))
        )
      );
  }
}


class MyButton extends StatelessWidget{
    const MyButton({Key?key}):super(key: key);

    @override
    Widget build(BuildContext context){
        return Container(
            width: 200,
            // height: 40,
            alignment: Alignment.center,
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 31, 199, 185),
                borderRadius: BorderRadius.circular(30)
            ), 
            child: const Text("按钮",style: TextStyle(
                color: Colors.white,
                fontSize: 16
            ),),
        );
    }
}

class MyText extends StatelessWidget{
    const MyText({Key?key}):super(key: key);

    @override
    Widget build(BuildContext context){
        return Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 31, 199, 185)
            ), 
            child: const Text("啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊",style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                letterSpacing: 2,
                decoration: TextDecoration.underline,
                decorationColor: Colors.yellow,
                decorationStyle: TextDecorationStyle.dashed

            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            
            ),
                
            

        );
    }
}