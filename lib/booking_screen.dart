import 'package:flutter/material.dart';
import 'package:park_here/dashboard.dart';
import 'package:park_here/payment.dart';
import 'ptime.dart';
import 'package:firebase_database/firebase_database.dart';

void main() {}

class bk extends StatelessWidget {
  const bk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookingScreen(),
    );
  }
}

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  late DatabaseReference _databaseReference;
  late DatabaseReference uname;
  late DatabaseReference uvnum;
  late DatabaseReference temp;
  late DatabaseReference uptime;

  String name = 'Empty Slot';
  String vnum = '     ';
  String tempp = '27';
  String ptime = '--.--';

  @override
  void initState() {
    super.initState();

    ///name
    _databaseReference = FirebaseDatabase.instance.reference().child('Name');
    _databaseReference.onValue.listen((event) {
      setState(() {
        name = event.snapshot.value.toString();
      });
    });

    ///name end
    ///vnum
    _databaseReference =
        FirebaseDatabase.instance.reference().child('Vehicle Number');
    _databaseReference.onValue.listen((event) {
      setState(() {
        vnum = event.snapshot.value.toString();
      });
    });

    ///vnum end
    ///tempp
    _databaseReference = FirebaseDatabase.instance.reference().child('Temp ');
    _databaseReference.onValue.listen((event) {
      setState(() {
        tempp = event.snapshot.value.toString();
      });
    });

    ///tempp end
    ///ptime
    _databaseReference =
        FirebaseDatabase.instance.reference().child('Parked at');
    _databaseReference.onValue.listen((event) {
      setState(() {
        ptime = event.snapshot.value.toString();
      });
    });

    ///ptime end
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Parking',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFFFD101),
          leading: IconButton(
            icon: Image.asset(
              'assets/arrow.png',
              height: 30.0,
              width: 30.0,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => rsvpage()),
              );
            },
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  ///first slot
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/sport-car.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'L.Fernando\n'
                            'KM-4521\n'
                            'Temp: $tempp\n'
                            'Parked at: 10:30AM',
                            style: TextStyle(fontSize: 24.0),
                          ),
                          SizedBox(height: 10.0),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('pay'),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.grey),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///second slot
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/sport-car.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '$name\n'
                            '$vnum\n'
                            'Temp: $tempp\n'
                            'parked at:\n$ptime',
                            style: TextStyle(fontSize: 24.0),
                          ),
                          SizedBox(height: 10.0),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ParkingPage()),
                              );
                            },
                            child: Text('pay'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  ///first slot
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/sport-car.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Empty slot\n'
                            '\n'
                            'Temp: $tempp\n'
                            'parked at:\n--.--',
                            style: TextStyle(fontSize: 24.0),
                          ),
                          SizedBox(height: 10.0),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('pay'),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///second slot
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/sport-car.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Empty slot\n'
                            '\n'
                            'Temp: $tempp\n'
                            'parked at:\n--.--',
                            style: TextStyle(fontSize: 24.0),
                          ),
                          SizedBox(height: 10.0),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('pay'),
                          ),
                        ],
                      ),
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
