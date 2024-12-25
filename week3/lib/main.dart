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
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 214, 0, 242)),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(247, 255, 0, 0)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/logo.png',
            width: 90,
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 90,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'ขอบคุณที่ใช้บริการ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'สรุปรายละเอียดการชาร์จ',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Icon(Icons.date_range),
                              Text(
                                'วันที่ชาร์จ',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '9 กันยายน 2567',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Icon(Icons.battery_charging_full_rounded),
                              Text(
                                'สถานีชาร์จ',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'PEA VOLTA บางจาก',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Icon(Icons.electrical_services_rounded),
                              Text(
                                'ประเภทหัวชาร์จ',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'CCS2',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_time_outlined),
                              Text(
                                'ระยะเวลาในการชาร์จ',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '00:12:54',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Icon(Icons.electric_bolt_outlined),
                              Text(
                                'จำนวนหน่วย',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '9.314 kWh',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 200,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                                      width: 20,
                                    ),
                      Text(
                        'ค่าบริการรวมทั้งสิ้น',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 162, 0, 184)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '49.36 บาท',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 162, 0, 184)),
                      ),const SizedBox(
                                      width: 20,
                                    ),
                    ],
                  ),

                ],
              )
            ],
          ),
        ),
       
      ),
    );
  }
}
