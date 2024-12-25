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
        appBarTheme:
            const AppBarTheme(color: Color.fromARGB(255, 10, 202, 255)),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 10, 202, 255)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          // leading: const Icon(Icons.account_balance_rounded),
          leading: IconButton(
              onPressed: () {
                debugPrint("Laeding is clicked");
              },
              icon: const Icon(Icons.ev_station)),
          title: const Text('CS Charge',
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
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
              child: Column(
            children: [
              const Text("Charging data"),
              Image.network(
                  "https://cdn.grange.co.uk/assets/new-cars/lamborghini/revuelto/revuelto-1_20241107093150469.png"),
              const Row(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your Current SOC(%)',
                        hintText: 'Current SOC'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your Target SOC(%)',
                        hintText: 'Target SOC'),
                  ),
                ],
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Charging rate(A)',
                    hintText: 'Charging rate'),
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Voltage(V)',
                    hintText: 'Voltage'),
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Charging power(kWh)',
                    hintText: 'Charging power'),
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Charging time(hrs)',
                    hintText: 'Charging time'),
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Battery capacity(kWh)',
                    hintText: 'Battery capacity'),
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Efficiency(%)',
                    hintText: 'Efficiency'),
              ),
            ],
          )),
        ),
        // floatingActionButton: FloatingActionButton(
        //     onPressed: () {
        //       debugPrint("Floating");
        //     },
        //     child: const Icon(Icons.insert_emoticon_outlined)),
      ),
    );
  }
}
