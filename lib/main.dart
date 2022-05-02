
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homePage.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Demo',
theme: ThemeData(
// This is the theme of your application.
//
// Try running your application with "flutter run". You'll see the
// application has a blue toolbar. Then, without quitting the app, try
// changing the primarySwatch below to Colors.green and then invoke
// "hot reload" (press "r" in the console where you ran "flutter run",
// or simply save your changes to "hot reload" in a Flutter IDE).
// Notice that the counter didn't reset back to zero; the application
// is not restarted.
primarySwatch: Colors.blue,
),
home: const MyHomePage(title: 'Flutter Demo Home Page'),
routes: {
  HomePageScreen.id: (context) => HomePageScreen(),
}
);
}
}

class MyHomePage extends StatefulWidget {
const MyHomePage({Key? key, required this.title}) : super(key: key);

// This widget is the home page of your application. It is stateful, meaning
// that it has a State object (defined below) that contains fields that affect
// how it looks.

// This class is the configuration for the state. It holds the values (in this
// case the title) provided by the parent (in this case the App widget) and
// used by the build method of the State. Fields in a Widget subclass are

// always marked "final".

final String title;

@override
State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int _counter = 0;

void _incrementCounter() {
setState(() {
// This call to setState tells the Flutter framework that something has
// changed in this State, which causes it to rerun the build method below
// so that the display can reflect the updated values. If we changed
// _counter without calling setState(), then the build method would not be
// called again, and so nothing would appear to happen.
_counter++;
});
}

@override
Widget build(BuildContext context) {
// This method is rerun every time setState is called, for instance as done
// by the _incrementCounter method above.
//
// The Flutter framework has been optimized to make rerunning build methods
// fast, so that you can just rebuild anything that needs updating rather
// than having to individually change instances of widgets.
return new Scaffold(
backgroundColor: Colors.black,
body: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
Container(
child: Stack(
children: <Widget>[
Container(
padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
child: Text('Login To continue',
style: TextStyle(
fontWeight: FontWeight.bold,
color: Colors.white,
)),
),

],
),
),
Container(
padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
child: Column(
children: <Widget>[
Container(
height: 40.0,
child: Material(
borderRadius: BorderRadius.circular(20.0),
shadowColor: Colors.blueAccent,
color: Colors.blue,
elevation: 7.0,
child: GestureDetector(
onTap: () {},
child: Center(
child: ElevatedButton(
  onPressed: () => {
    Navigator.pushNamed(context, 'home_page')
  },
  child: Text(
'Have a facebook/Email Account?',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontFamily: 'Montserrat'),
),
)
),
),
),
),

SizedBox(height: 20.0),

Container(
//alignment: Alignment(1.0, 0.0),
padding: EdgeInsets.only(top: 15.0, left: 20.0),
child: InkWell(
child: Text(
'or',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontFamily: 'Montserrat',
),
),
),
),
TextField(
decoration: InputDecoration(
labelText: '+91|Mobile No',

labelStyle: TextStyle(
fontFamily: 'Montserrat',
fontWeight: FontWeight.bold,
color: Colors.grey),
),
),
SizedBox(height: 20.0),

],
)
),
SizedBox(height: 15.0),

],
));
}
}