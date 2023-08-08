import 'package:flutter/material.dart';
import "./font.dart";

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
        body: ListView(
            children:const [
                MyApp(),
                MyButton(),
                LocalImg(),
                MyHome(),
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

class MyImage extends StatelessWidget{
    const MyImage({Key?key}):super(key: key);

    @override
    Widget build(BuildContext context){
        return Container(
            width: 300,
            height: 300,
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            decoration:  BoxDecoration(
                color:Colors.yellow,
                borderRadius: BorderRadius.circular(260),
                image: const DecorationImage(
                    image:NetworkImage("https://img0.baidu.com/it/u=3411738861,1952377287&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500"),
                    fit:BoxFit.cover
                )
            )
            // child: Image.network(
            //     "https://img0.baidu.com/it/u=3411738861,1952377287&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500",
            //     // scale: 2,
            //     // alignment: Alignment.topCenter
            //     // fit: BoxFit.fitHeight,
            //     repeat: ImageRepeat.repeatX,
            // ),
        );
    }
}

// 圆形图片
class ClipImage extends StatelessWidget{
    const ClipImage({Key?key}):super(key: key);

    @override
    Widget build(BuildContext context){
        return ClipOval(
            child: Image.network(
                "https://img0.baidu.com/it/u=3411738861,1952377287&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500",
                // scale: 2,
                // alignment: Alignment.topCenter
                fit: BoxFit.cover,
                width: 200,
                height: 200

            ),
        );
    }
}

// 本地图片
class LocalImg extends StatelessWidget{
    const LocalImg({Key?key}):super(key: key);

    @override
    Widget build(BuildContext context){
        return Container(
            width: 300,
            height: 300,
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            
            child: Image.asset(
                "images/1.jpg",
                // scale: 2,
                // alignment: Alignment.topCenter
                fit: BoxFit.cover,
            ),
        );
    }
}


// icon
class MyHome extends StatelessWidget{
    const MyHome({Key?key}):super(key: key);

    @override
    Widget build(BuildContext context){
        return const Column(
            children: [
                SizedBox(height: 20),
                Icon(Icons.home,size: 40,color:Colors.tealAccent),
                SizedBox(height: 20),
                Icon(Icons.abc_sharp,size: 40,color:Colors.tealAccent),
                SizedBox(height: 20),
                Icon(xlhFont.emote,size: 40,),
                SizedBox(height: 20),
                Icon(xlhFont.emote,size: 40,),
                SizedBox(height: 20),
                Icon(xlhFont.emote,size: 40,),
                SizedBox(height: 20),
                Icon(xlhFont.emote,size: 40,),
            ],
        );
    }
}

class MyHomeTwo extends StatelessWidget{
    const MyHomeTwo({Key?key}):super(key: key);

    @override
    Widget build(BuildContext context){
        return ListView(
            children: const <Widget>[
                ListTile(
                    title: Text('首页'),
                ),
                Divider(),
            ]
        );
    }
}
