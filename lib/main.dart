import 'package:flutter/material.dart';

void main(){
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget{
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FractionalySize(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rahat Hossain', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        height: 300,
        color: Colors.red,
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 16/9,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

class FractionalySize extends StatelessWidget{
  const FractionalySize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rahat Hossain', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.3,
          child: Container(
            color: Colors.red,
            child: Center(
              child: Text('hello', style: TextStyle(color: Colors.white),),
            ),
          ),
        ),
      ),
    );
  }
}