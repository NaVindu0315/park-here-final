import 'package:flutter/material.dart';
import 'main.dart';
import 'paynow.dart';

void main() {
  runApp(stoppage());
}

class stoppage extends StatelessWidget {
  const stoppage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: stpwidget(),
    );
  }
}

class stpwidget extends StatefulWidget {
  const stpwidget({Key? key}) : super(key: key);

  @override
  State<stpwidget> createState() => _stpwidgetState();
}

class _stpwidgetState extends State<stpwidget> {
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
          selectedItemColor: Colors.blue, // set the color of the selected item
          unselectedItemColor:
              Colors.black, // set the color of the unselected items
          selectedLabelStyle: TextStyle(
              fontWeight:
                  FontWeight.normal), // set the style of the selected item
          unselectedLabelStyle: TextStyle(
              fontWeight:
                  FontWeight.bold), // set the style of the unselected items

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
            onPressed: () {},
          ),
          title: Text(
            '     Proceed To pay',
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
              Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 150.0,
                      width: 400.0,
                      child: TextButton(
                        onPressed: null,
                        child: Image.asset('images/ptime.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextButton(
                      onPressed: null,
                      child: Image.asset('images/clk.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextButton(
                      onPressed: null,
                      child: Image.asset('images/rtn.png'),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pypage()),
                        );
                      },
                      child: Image.asset('images/py.png'),
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
