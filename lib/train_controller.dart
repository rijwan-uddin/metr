import 'package:get/get.dart';

class TrainController extends GetxController {
  var fromStation = ''.obs;
  var toStation = ''.obs;
  var trainSchedules = [].obs;

  void setFromStation(String station) {
    fromStation.value = station;
  }

  void setToStation(String station) {
    toStation.value = station;
  }

  void fetchTrainSchedules() {
    // Dummy data for train schedules
    trainSchedules.value = [
      {
        'from': 'Mirpur 10',
        'to': 'Farmgate',
        'time': '08:00 AM',
        'arrival': '08:30 AM',
        'date': '25 Jan, 2022',
        'price': 45.50,
        'trainNo': 'DMR-15',
      },
      {
        'from': 'Mirpur 10',
        'to': 'Farmgate',
        'time': '11:15 AM',
        'arrival': '11:55 AM',
        'date': '26 Jan, 2022',
        'price': 42.50,
        'trainNo': 'DMR-16',
      },
    ];
  }
}
