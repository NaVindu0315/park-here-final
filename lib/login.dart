import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() {
  runApp(lgin());
}

class lgin extends StatelessWidget {
  const lgin({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Smart Park'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color(0xFFFFD101),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(48.0))),
        centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(
              color: Colors.black, fontSize: 32, fontStyle: FontStyle.italic),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 20,
          bottom: 20,
        ),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/pic_1.png'),
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 14),
              alignment: Alignment.center,
              child: Container(
                width: 380,
                height: 400,
                decoration: BoxDecoration(
                    color: Color(0xFFFFD101),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.center,
                      child: TextField(
                        enabled: true,
                        style: TextStyle(fontSize: 28.0, color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'NIC',
                          labelStyle: TextStyle(
                            color: Colors.black45,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.center,
                      child: TextField(
                        enabled: true,
                        style: TextStyle(fontSize: 28.0, color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Vehicle Number',
                          labelStyle: TextStyle(
                            color: Colors.black45,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 310,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: ElevatedButton(
                        child: Text(
                          'ENTER',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 37),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => rsvpage()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
