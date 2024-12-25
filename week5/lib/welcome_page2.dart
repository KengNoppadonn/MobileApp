import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class welcomePage2 extends StatefulWidget {
  const welcomePage2({super.key});

  @override
  State<welcomePage2> createState() => _welcomePage2State();
}

class _welcomePage2State extends State<welcomePage2> {
  int counter = 0;
  String oout = '';
  String Name='';
  final textcontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              debugPrint("Leading clicked");
            },
            icon: const Icon(Icons.ev_station)),
        title: const Text(
          'CS Charge',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("Balance checked");
              },
              icon: const Icon(Icons.account_balance_wallet_outlined)),
          IconButton(
              onPressed: () {
                debugPrint("Info clicked");
              },
              icon: const Icon(Icons.info_outline)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (oout == "") {
                      oout = "Hi";
                    } else {
                      oout = "";
                    }
                  });
                  debugPrint("Press button");
                },
                child: Text(
                  oout == "" ? "Hi" : "Bye", // เปลี่ยนข้อความตามเงื่อนไข
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter += 1;
                    });
                    debugPrint("Press button");
                  },
                  child: const Text(
                    "+",
                    style: TextStyle(fontSize: 30),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter -= 1;
                    });
                    debugPrint("Press button");
                  },
                  child: const Text(
                    "-",
                    style: TextStyle(fontSize: 30),
                  )),
              Text(
                "Counter Value: $counter",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "$oout",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: textcontrol,
                decoration: InputDecoration(
                  hintText: "input here"

                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    String input=textcontrol.text;
                    setState(() {
                      Name="Hi "+input+". How are you to day?";
                    });
                    debugPrint("Press button");
                  },
                  child: const Text(
                    "Check ",
                    style: TextStyle(fontSize: 30),
                  )),
              Text(
                "$Name",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
