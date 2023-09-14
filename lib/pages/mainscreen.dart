import "package:flutter/material.dart";

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Список дел'),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Main Screen'),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/todo');
          }, child: Text('Перейти далее'))
        ],
      ),
    );
  }
}
