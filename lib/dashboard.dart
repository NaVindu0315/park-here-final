import 'package:flutter/material.dart';
import 'package:park_here/availability.dart';
import 'package:park_here/paynow.dart';
import 'ptime.dart';
import 'login.dart';
import 'paynow.dart';
import 'availability.dart';

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
  const rsv({Key? key}) : super(key: key);

  @override
  State<rsv> createState() => _rsvState();
}

class _rsvState extends State<rsv> {
  int _currentIndex = 0;

  // final List<Widget> _children = [ Home(), Explore(), Notifications(),    Profile()  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red, // set the color of the selected item
          unselectedItemColor:
              Colors.black, // set the color of the unselected items
          selectedLabelStyle: TextStyle(
              fontWeight:
                  FontWeight.normal), // set the style of the selected item
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          backgroundColor: Color(0xFFFFD101),
          onTap: onTabTapped,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Reserve',
              icon: Icon(Icons.car_crash_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Pay',
              icon: Icon(Icons.money_rounded),
            ),
            BottomNavigationBarItem(
              label: 'User',
              icon: Icon(Icons.person),
            ),
          ],
        ),
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
          child: Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: null,
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
                            MaterialPageRoute(builder: (context) => avl()),
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
                            MaterialPageRoute(builder: (context) => stoppage()),
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
      ),
    );
  }
}
