import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:park_here/availability.dart';
import 'package:park_here/booking_screen.dart';
import 'package:park_here/paynow.dart';
import 'package:park_here/send.dart';
import 'package:park_here/stream.dart';
import 'ptime.dart';
import 'login.dart';
import 'paynow.dart';
import 'availability.dart';
import 'booking_screen.dart';

void main() {
  runApp(rsvpage());
}

///statless widget
class rsvpage extends StatelessWidget {
  const rsvpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: rsv(),
    );
  }
}

///statfull widget

class rsv extends StatefulWidget {
  @override
  State<rsv> createState() => _rsvState();
}

class _rsvState extends State<rsv> {
  late DatabaseReference pglink;

  String pgadrs = 'google.com';

  @override
  void initState() {
    super.initState();

    ///name
    pglink = FirebaseDatabase.instance.reference().child('page');
    pglink.onValue.listen((event) {
      setState(() {
        pgadrs = event.snapshot.value.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
          ),
          /*actions: [

            ],*/
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => rsvpage()),
              );
            },
          ),
          title: Text(
            '         Park Here',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Color(0xFFFFD101),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SendDataPage()),
                        );
                      },
                      child: Image.asset('images/cvr.png'),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              ////first two images
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,

                          ///me line eka maru krpn
                          MaterialPageRoute(
                              builder: (context) =>
                                  WebViewPage(url: '$pgadrs')),
                        );
                      },
                      child: Image.asset('images/1.png'),
                    ),
                  ),
                  ////second image
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => bk()),
                        );
                      },
                      child: Image.asset('images/2.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              ////second image row
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => lgin()),
                        );
                      },
                      child: Image.asset('images/3.png'),
                    ),
                  ),
                  ////second image
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pypage()),
                        );
                      },
                      child: Image.asset('images/4.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
