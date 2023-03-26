import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() {
  runApp(pypage());
}

class pypage extends StatelessWidget {
  const pypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: payment(),
    );
  }
}

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => rsvpage()),
            );
          },
        ),
        title: Text(
          '          Payment',
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ///date label
              SizedBox(
                height: 10.0,
              ),
              TextField(
                enabled: false,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
                decoration: InputDecoration(
                  labelText: 'Bill Summary',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.center,
                child: TextField(
                  enabled: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFFFD101),
                    prefixIcon: Icon(
                      Icons.calendar_month_rounded,
                      color: Colors.black,
                      semanticLabel: 'Bold Icon',
                    ),
                    labelText: '2023-03-27',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),

              ///time
              SizedBox(
                height: 30.0,
              ),
              Container(
                alignment: Alignment.center,
                child: TextField(
                  enabled: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFFFD101),
                    prefixIcon: Icon(
                      Icons.access_time_filled_outlined,
                      color: Colors.black,
                      semanticLabel: 'Bold Icon',
                    ),
                    labelText: '08.30 am - 11.10 am',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),

              ///duration
              SizedBox(
                height: 30.0,
              ),
              Container(
                alignment: Alignment.center,
                child: TextField(
                  enabled: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFFFD101),
                    prefixIcon: Icon(
                      Icons.timer,
                      color: Colors.black,
                      semanticLabel: 'Bold Icon',
                    ),
                    labelText: '2h 40min',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),

              ///total
              SizedBox(
                height: 30.0,
              ),
              Container(
                alignment: Alignment.center,
                child: TextField(
                  enabled: false,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFFFD101),
                    prefixIcon: Icon(
                      Icons.attach_money,
                      color: Colors.black,
                      semanticLabel: 'Bold Icon',
                    ),
                    labelText: '400 LKR',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              TextField(
                enabled: false,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
                decoration: InputDecoration(
                  labelText: 'Pay Now',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //payment
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFFFD101),
                        hintText: 'XXXX XXXX XXXX XXXX',
                        labelText: 'Card Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        prefixIcon: Icon(Icons.credit_card),
                      ),
                    ),

                    SizedBox(
                      height: 20.0,
                    ),
                    //cvc and expiry date
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFFD101),
                              hintText: 'MM/YY',
                              labelText: 'Expiry date',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Icon(Icons.date_range),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFFFD101),
                              hintText: 'CVC',
                              labelText: 'CVC',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Icon(Icons.lock_outline),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: ClipOval(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => rsvpage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFFD101),
                          ),
                          child: Text(
                            'PAY',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
