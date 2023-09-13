import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _userToDo = '';
  List<String> todoList = [];

  @override
  void initState() {
    super.initState();
    todoList.addAll(['Раз', 'Два', 'Три']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(todoList[index]),
              child: Card(
                child: ListTile(
                  title: Text(todoList[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete_sweep),
                    onPressed: () {
                      setState(() {
                        todoList.removeAt(index);
                      });
                    },
                  ),
                ),
              ),
              onDismissed: (direction) {
                setState(() {
                  todoList.removeAt(index);
                });
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext buider) {
                return AlertDialog(
                  title: Text('Новая запись'),
                  content: TextField(
                    onChanged: (String value) {
                      _userToDo = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          todoList.add(_userToDo);
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text("Добавить"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                      ),
                    )
                  ],
                );
              });
        },
        child: const Icon(
          Icons.add_box,
          color: Colors.white,
        ),
      ),
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({required Key key}) : super(key: key);
//
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//
//   List todoList = [];
//
//   @override
//   void initState() {
//     todoList.add(["1", "2", "3"]);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black45,
//       ),
//       body: ListView.builder(itemCount: todoList.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Dismissible(
//                 key: Key(todoList[index]),
//                 child: Card(
//                   child: ListTile(title: Text(todoList[index])),
//                 )
//             );
//           }),
//     );
//   }
// }
