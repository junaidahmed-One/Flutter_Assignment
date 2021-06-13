import 'package:flutter/material.dart';
import 'main.dart';

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyNewScreen(title: 'Task 2'),
    );
  }
}

class MyNewScreen extends StatefulWidget {
  MyNewScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyNewScreen createState() => _MyNewScreen();
}

class _MyNewScreen extends State<MyNewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                "This is Second Screen",
                style: TextStyle(
                  color: Colors.cyan,
                  fontStyle: FontStyle.italic,
                ),
                textScaleFactor: 2.0,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: FlatButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    SnackBar(
                      content: Text("Thank You For Submitting"),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp())),
                  },
                  child: Text(
                    "Click for First Screen",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
