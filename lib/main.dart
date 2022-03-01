// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'page2.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'POPI act'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.amber,
            child: Container(
              color: Colors.blue,
              height: 250,
              padding: const EdgeInsets.all(9.0),
              child: Column(
                children: [
                  const Text(
                    'What is POPI?',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Welcome to the Protection of Personal Information Act (often called the POPI Act or POPIA) in the form of a website so everyone can access it quickly on all devices.',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  ButtonBar(
                    children: [
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyPage2(
                                      title: '',
                                    )),
                          );
                        },
                        child: const Text("More"),
                        color: Colors.purple,
                        textColor: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
