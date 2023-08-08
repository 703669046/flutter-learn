import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget{
    const MyApp({Key?key}):super(key: key);
    @override
    Widget build(BuildContext context){
        return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.amber
            ),
            home: Scaffold(
                appBar: AppBar(title: const Text('Flutter Icon')),
                body: const MyHomeTwo(),
            ),
        );
    }
}


class MyHomeTwo extends StatelessWidget{
    const MyHomeTwo({Key?key}):super(key: key);

    @override
    Widget build(BuildContext context){
        return ListView(
            children:const <Widget>[
                ListTile(
                    leading: Icon(Icons.home),
                    title: Text('首页')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.card_travel_rounded),
                    title: Text('分类')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('购物车')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.supervised_user_circle),
                    title: Text('我的')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('购物车')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.supervised_user_circle),
                    title: Text('我的')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('购物车')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.supervised_user_circle),
                    title: Text('我的')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('购物车')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.supervised_user_circle),
                    title: Text('我的')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('购物车')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.supervised_user_circle),
                    title: Text('我的')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('购物车')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.supervised_user_circle),
                    title: Text('我的')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('购物车')
                ),
                Divider(),
                ListTile(
                    leading: Icon(Icons.supervised_user_circle),
                    title: Text('我的')
                ),
                Divider(),
            ]
        );
    }
}
