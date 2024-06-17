import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'train_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Metro Rail Ticket System',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final TrainController controller = Get.put(TrainController());

  final List<String> stationNames = [
    'Uttara North',
    'Uttara Center',
    'Uttara South',
    'Pallabi',
    'Mirpur11',
    'Mirpur10',
    'Kazipara',
    'Shewrapara',
    'Agargaon',
    'Bijoysarani',
    'Farmgate',
    'Kawranbazar',
    'Shahbagh',
    'Dhaka University',
    'Sochibaloy',
    'Motijhil',
    'Komlapur',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Result')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(labelText: 'From'),
                    items: stationNames.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      controller.setFromStation(newValue!);
                    },
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.swap_horiz),
                SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(labelText: 'To'),
                    items: stationNames.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      controller.setToStation(newValue!);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.fetchTrainSchedules();
              },
              child: Text('Confirm'),
            ),
            SizedBox(height: 16),
            Obx(() {
              return Expanded(
                child: ListView.builder(
                  itemCount: controller.trainSchedules.length,
                  itemBuilder: (context, index) {
                    var schedule = controller.trainSchedules[index];
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${schedule['from']} to ${schedule['to']}',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'BDT ${schedule['price']}',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text('Train No: ${schedule['trainNo']}'),
                            Text('Time: ${schedule['time']}'),
                            Text('Arrival: ${schedule['arrival']}'),
                            Text('Date: ${schedule['date']}'),
                            SizedBox(height: 8),
                            Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Book Now'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
