import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hivel_esson/pages/home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //reference our box
  final _myBox = Hive.box('myBox');

  //write data method
  void writeData() {
    _myBox.put(1, 'Mitch');
    print(_myBox.get(1)); // This will print 'Mitch' to the console
  }

  //read data method

  void readData() {
    print(_myBox.get(1)); // This will print 'Mitch' to the console
  }

  //delete data method
  void deleteData() {
    _myBox.delete(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: writeData,
              color: Colors.blue[200],
              child: Text('Write'),
            ),
            MaterialButton(
              onPressed: readData,
              color: Colors.blue[200],
              child: Text('Read'),
            ),
            MaterialButton(
              onPressed: deleteData,
              color: Colors.blue[200],
              child: Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
