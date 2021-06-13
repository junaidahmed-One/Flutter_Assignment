import 'package:flutter/material.dart';
import 'SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Task 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "This is First Screen",
              style: TextStyle(
                  color: Colors.red,
                  backgroundColor: Colors.black87,
                  fontStyle: FontStyle.italic,
                  fontFamily: "Roboto"),
              textScaleFactor: 2.0,
            ),
            Image.network(
                'https://content.techgig.com/thumb/msid-79844104,width-860,resizemode-4/5-Best-programming-languages-to-learn-in-2021.jpg?140622'),
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text(
                  "Click For Second Screen",
                  style: TextStyle(fontSize: 20.0),
                ),
                color: _hasBeenPressed ? Colors.blueAccent : Colors.teal,
                textColor: Colors.white,
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewScreen()),
                  ),
                  setState(() {
                    _hasBeenPressed = !_hasBeenPressed;
                  })
                },
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/drawimage.png"),
                      fit: BoxFit.cover)),
              child: Text(
                "Local Image",
                style: TextStyle(color: Colors.red),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                size: 15,
              ),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.android,
                size: 15,
              ),
              title: Text('Android'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.add_to_home_screen,
                size: 15,
              ),
              title: Text('Close Menu'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
