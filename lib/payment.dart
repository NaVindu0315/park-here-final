import 'package:flutter/material.dart';
import 'package:park_here/dashboard.dart';
import 'package:firebase_database/firebase_database.dart';

import 'login.dart';

class ParkingPage extends StatefulWidget {
  const ParkingPage({Key? key}) : super(key: key);

  @override
  _ParkingPageState createState() => _ParkingPageState();
}

class _ParkingPageState extends State<ParkingPage> {
  late DatabaseReference _databaseReference;
  late DatabaseReference uname;
  late DatabaseReference uhrs;
  late DatabaseReference umin;
  late DatabaseReference uprice;
  String name = 'Empty slot';
  String phrs = '--';
  String pmins = '--';
  String pfee = '';
  @override
  void initState() {
    super.initState();
    _databaseReference = FirebaseDatabase.instance.reference().child('Name');
    _databaseReference.onValue.listen((event) {
      setState(() {
        name = event.snapshot.value.toString();
      });
    });

    ///name
    _databaseReference = FirebaseDatabase.instance.reference().child('Hours');
    _databaseReference.onValue.listen((event) {
      setState(() {
        phrs = event.snapshot.value.toString();
      });
    });

    ///name end
    ///vnum
    _databaseReference = FirebaseDatabase.instance.reference().child('minutes');
    _databaseReference.onValue.listen((event) {
      setState(() {
        pmins = event.snapshot.value.toString();
      });
    });

    ///vnum end
    ///tempp
    _databaseReference = FirebaseDatabase.instance.reference().child('Fee');
    _databaseReference.onValue.listen((event) {
      setState(() {
        pfee = event.snapshot.value.toString();
      });
    });

    ///tempp end
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFD101),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Pay Now'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$name, Your vehicle has been parked in for',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              '$phrs hours and $pmins mins',
              style: TextStyle(fontSize: 36),
            ),
            SizedBox(height: 20),
            Text(
              'Your Fee is ',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              '\nRs.$pfee',
              style: TextStyle(fontSize: 36),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text('Payment Successful'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => rsvpage()),
                          );
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Pay'),
            ),
          ],
        ),
      ),
    );
  }
}
