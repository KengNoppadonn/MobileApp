import 'package:flutter/material.dart';

class aboutPage2 extends StatefulWidget {
  const aboutPage2({super.key});

  @override
  State<aboutPage2> createState() => _aboutPage2State();
}

class _aboutPage2State extends State<aboutPage2> {
  void calTime() {
    // ดึงค่าจาก TextEditingController
    double? ampere = double.tryParse(amp.text); // กระแส (A)
    double? voltage = double.tryParse(volt.text); // แรงดัน (V)
    double? batteryCapacity = double.tryParse(capacity.text); // ความจุแบต (kWh)
    double? chargeEfficiency =
        double.tryParse(efficiency.text); // ประสิทธิภาพ (%)

    // ตรวจสอบค่าที่ไม่เป็น null
    if (ampere == null ||
        voltage == null ||
        batteryCapacity == null ||
        chargeEfficiency == null) {
      debugPrint("กรุณาใส่ข้อมูลทั้งหมดให้ครบถ้วน");
      return;
    }

    // คำนวณพลังงานที่ต้องใช้
    double energyRequired = batteryCapacity * (targetSoc - currentSoc) / 100;

    // คำนวณกำลังไฟฟ้า (kW)
    double power = (ampere * voltage) / 1000;

    // คำนวณเวลาที่ใช้ในการชาร์จ (ชั่วโมง)
    double chargingTime = energyRequired / (power * (chargeEfficiency / 100));
    setState(() {
      time = chargingTime.toStringAsFixed(2) ;
    });
    debugPrint(
        "พลัง: ${targetSoc - currentSoc} kWh");
  }
// 24.64  3.477
  double currentSoc = 20;
  double targetSoc = 50;
  final amp = TextEditingController();
  final volt = TextEditingController();
  final capacity = TextEditingController();
  final efficiency = TextEditingController();
  String time = '';
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
              const Center(
                child: Text(
                  "Charging Page",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Image.network(
                  "https://cdn.grange.co.uk/assets/new-cars/lamborghini/revuelto/revuelto-1_20241107093150469.png",
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Current SOC: ${currentSoc.toInt()}%",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Slider(
                value: currentSoc,
                min: 0,
                max: 99,
                divisions: 100,
                label: "${currentSoc.toInt()}%",
                onChanged: (value) {
                  setState(() {
                    currentSoc = value;
                    // ตรวจสอบให้ Target SOC มากกว่า Current SOC
                    if (targetSoc <= currentSoc) {
                      targetSoc = currentSoc + 1; // Target SOC ต้องมากกว่า
                    }
                  });
                },
              ),
              const SizedBox(height: 12),

              // Target SOC Slider
              Text(
                "Target SOC: ${targetSoc.toInt()}%",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Slider(
                value: targetSoc,
                min: 0,
                max: 100,
                divisions: 100,
                label: "${targetSoc.toInt()}%",
                onChanged: (value) {
                  setState(() {
                    if (value > currentSoc) {
                      targetSoc =
                          value; // อัปเดตเฉพาะเมื่อ Target SOC มากกว่า Current SOC
                    }
                  });
                },
              ),
              const SizedBox(height: 12),
              TextField(
                controller: amp,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Charging rate (A)',
                    hintText: 'Charging rate'),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: volt,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Voltage (V)',
                    hintText: 'Voltage'),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: capacity,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Battery capacity (kWh)',
                    hintText: 'Battery capacity'),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: efficiency,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Efficiency (%)',
                    hintText: 'Efficiency'),
              ),
              ElevatedButton(
                  onPressed: () {
                    calTime();
                  },
                  child: Text("Calculate")),
              Text("ใช้เวลา $time ชั่วโมง"),
              
            ],
          ),
        ),
      ),
    );
  }
}
