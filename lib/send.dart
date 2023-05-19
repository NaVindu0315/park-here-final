import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:park_here/booking_screen.dart';

class SendDataPage extends StatefulWidget {
  @override
  _SendDataPageState createState() => _SendDataPageState();
}

class _SendDataPageState extends State<SendDataPage> {
  //late DatabaseReference dbref;
  TextEditingController uc = TextEditingController();
  TextEditingController vh = TextEditingController();
  TextEditingController tc = TextEditingController();
  TextEditingController pt = TextEditingController();
  TextEditingController hourcontrol = TextEditingController();
  TextEditingController minutcontrol = TextEditingController();
  TextEditingController pricecontrol = TextEditingController();
  TextEditingController urlcontrol = TextEditingController();

  late String username;
  late String vnum;
  late String temp;
  late String ptime;
  late String hours;
  late String mins;
  late String fee;
  late String pglinkk;
  final TextEditingController _textEditingController = TextEditingController();
  //late DatabaseReference dbref;
  ///this below code update the rtdb for each entry
  /*late DatabaseReference dbref = FirebaseDatabase.instance.ref();

  @override
  void initState() {
    super.initState();
    dbref = FirebaseDatabase.instance.ref().child('name');
  }

  Future<void> addData(String msg) async {
    await dbref.push().set(msg);
  }
  */
  ///to update

  late DatabaseReference usernamevalue = FirebaseDatabase.instance.ref();
  late DatabaseReference vnumvalue = FirebaseDatabase.instance.ref();
  late DatabaseReference tempvalue = FirebaseDatabase.instance.ref();
  late DatabaseReference ptimevalue = FirebaseDatabase.instance.ref();
  late DatabaseReference phourse = FirebaseDatabase.instance.ref();
  late DatabaseReference pmins = FirebaseDatabase.instance.ref();
  late DatabaseReference pfee = FirebaseDatabase.instance.ref();
  late DatabaseReference usersentlink = FirebaseDatabase.instance.ref();

  @override
  void initState() {
    super.initState();

    usernamevalue = FirebaseDatabase.instance.ref().child('Name');
    vnumvalue = FirebaseDatabase.instance.ref().child('Vehicle Number');
    tempvalue = FirebaseDatabase.instance.ref().child('Temp ');
    ptimevalue = FirebaseDatabase.instance.ref().child('Parked at');
    phourse = FirebaseDatabase.instance.ref().child('Hours');
    pmins = FirebaseDatabase.instance.ref().child('minutes');
    pfee = FirebaseDatabase.instance.ref().child('Fee');
    usersentlink = FirebaseDatabase.instance.ref().child('page');
  }

  Future<void> sendlink(String pgadrs) async {
    await usersentlink.set(pgadrs);
  }

  Future<void> priceandtime(String uhrs, String umins, String upr) async {
    await phourse.set(uhrs);
    await pmins.set(umins);
    await pfee.set(upr);
  }

  Future<void> updateData(String addname, String addvnum) async {
    await usernamevalue.set(addname);
    await vnumvalue.set(addvnum);
  }

  Future<void> updatetime(String addtime) async {
    await ptimevalue.set(addtime);
  }

  Future<void> updatetemp(String addtemp) async {
    await tempvalue.set(addtemp);
  }

  Future<void> adduser() async {
    // await _firestore.collection('userdetails').add({'email': email, 'pw': pw});
    await FirebaseFirestore.instance.collection('users').doc('nn').set({
      'username': 'navindu',
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Send Data"),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            ///user name
            SizedBox(
              height: 70,
              width: 350, // Set the width of the SizedBox to 300 pixels
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: uc,
                  onChanged: (value) {
                    username = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),

            ///user name end
            ///vehicle num
            SizedBox(
              height: 70,
              width: 350, // Set the width of the SizedBox to 300 pixels
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: vh,
                  onChanged: (value) {
                    vnum = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.car_repair,
                    ),
                    labelText: 'Vehcile',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),

            ///vehicle num end
            ElevatedButton(
              onPressed: () {
                updateData(username, vnum);
                uc.clear();
                vh.clear();
                tc.clear();
              },
              child: Text("Send"),
            ),

            ///temp
            SizedBox(
              height: 70,
              width: 350, // Set the width of the SizedBox to 300 pixels
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: tc,
                  onChanged: (value) {
                    temp = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.thermostat,
                    ),
                    labelText: 'Temperature',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),

            ///temp end
            ///
            ElevatedButton(
              onPressed: () {
                updatetemp(temp);
                tc.clear();
              },
              child: Text("Send"),
            ),

            ///time
            SizedBox(
              height: 70,
              width: 350, // Set the width of the SizedBox to 300 pixels
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: pt,
                  onChanged: (value) {
                    ptime = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.timer,
                    ),
                    labelText: 'Parked at',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                updatetime(ptime);
                pt.clear();
              },
              child: Text("Send"),
            ),

            ///time ed
            ///hours
            SizedBox(
              height: 70,
              width: 350, // Set the width of the SizedBox to 300 pixels
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: hourcontrol,
                  onChanged: (value) {
                    hours = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_clock,
                    ),
                    labelText: 'Parked hourse',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),

            ///mins
            SizedBox(
              height: 70,
              width: 350, // Set the width of the SizedBox to 300 pixels
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: minutcontrol,
                  onChanged: (value) {
                    mins = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.timer,
                    ),
                    labelText: 'Parked Minutes',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),

            ///fee
            SizedBox(
              height: 70,
              width: 350, // Set the width of the SizedBox to 300 pixels
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: pricecontrol,
                  onChanged: (value) {
                    fee = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.monetization_on,
                    ),
                    labelText: 'Fee',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                try {
                  priceandtime(hours, mins, fee);
                  hourcontrol.clear();
                  minutcontrol.clear();
                  pricecontrol.clear();
                } catch (e) {
                  print(e);
                }
              },
              child: Text("Send"),
            ),
            //link
            ///temp
            SizedBox(
              height: 70,
              width: 350, // Set the width of the SizedBox to 300 pixels
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: urlcontrol,
                  onChanged: (value) {
                    pglinkk = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.link,
                    ),
                    labelText: 'URL',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),

            ///temp end
            ///
            ElevatedButton(
              onPressed: () {
                sendlink(pglinkk);
                urlcontrol.clear();
              },
              child: Text("Send"),
            ),
          ],
        ),
      ),
    );
  }
}
