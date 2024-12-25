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
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: [
                
                const Text(
                  'ยินดีต้อนรับ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      "https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small_2x/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg",
                      width: 100,
                    ),
                    Image.network(
                      "https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small_2x/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg",
                      width: 100,
                    ),
                    Image.network(
                      "https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small_2x/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg",
                      width: 100,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.network(
                      "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg",
                      width: 100,
                    ),
                    Image.network(
                      "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg",
                      width: 100,
                    ),
                    Image.network(
                      "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg",
                      width: 100,
                    ),
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
                // ElevatedButton(
                //     onPressed: () {
                //       debugPrint("ถอน");
                //     },
                //     child: const Text("ถอน")),
                Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        const Text("jjj"),
                        Image.network(
                          "https://www.jps2013.com/wp-content/uploads/2020/10/FRE-B-13.jpg",
                          width: 100, // Optional: Set the image width
                          height: 100, // Optional: Set the image height
                        ),
                      ],
                    ),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter your name'
                  ),
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                  
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your password'
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: const Text("data"),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        // Use Column to place multiple widgets inside Expanded
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align content to the start
                        children: [
                          Text(
                            'บทความยาววววววววววววววววววววววววววว',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons
                              .ev_station), // Add spacing if necessary (e.g., SizedBox)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
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
