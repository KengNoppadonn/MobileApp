import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 255, 10, 10)),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(247, 255, 0, 0)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          // leading: const Icon(Icons.account_balance_rounded),
          leading: IconButton(
              onPressed: () {
                debugPrint("Laeding is clicked");
              },
              icon: const Icon(Icons.account_balance_outlined)),
          title: const Text('CS Bank',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint("balance checked");
                },
                icon: const Icon(Icons.account_balance_wallet_outlined)),
            IconButton(
                onPressed: () {
                  debugPrint("Info clicked");
                },
                icon: const Icon(Icons.info_outline)),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("1"),
                  Text("2"),
                  Text("3"),
                  Text("4"),
                ],
              ),
              const Text(
                'ยินดีต้อนรับ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'สินเชื่อด่วน',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    "https://i.redd.it/zj7m5n0a2xx91.jpg",
                    width: 100,
                  ),
                  Image.asset("assets/images/1.jpg", width: 100),
                ],
              ),
              IconButton(
                  onPressed: () {
                    debugPrint("Cicked VPN");
                  },
                  icon: const Icon(Icons.vpn_lock_outlined)),
              ElevatedButton(
                  onPressed: () {
                    debugPrint("ฝาก");
                  },
                  child: const Text("ฝาก")),
              ElevatedButton(
                  onPressed: () {
                    debugPrint("ถอน");
                  },
                  child: const Text("ถอน")),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("Floating");
            },
            child: const Icon(Icons.insert_emoticon_outlined)),
      ),
    );
  }
}
