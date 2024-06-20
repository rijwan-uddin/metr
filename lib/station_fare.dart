import 'package:flutter/foundation.dart';

class StationFare {
  final String fromStation;
  final String toStation;
  final int fare;

  StationFare({
    required this.fromStation,
    required this.toStation,
    required this.fare,
  });
}

class StationFareDatabase {
  List<StationFare> _fares = [
    // Uttara North fares
    StationFare(fromStation: 'Uttara North', toStation: 'Uttara Center', fare: 20),
    StationFare(fromStation: 'Uttara North', toStation: 'Uttara South', fare: 20),
    StationFare(fromStation: 'Uttara North', toStation: 'Pallabi', fare: 20),
    StationFare(fromStation: 'Uttara North', toStation: 'Mirpur 11', fare: 30),
    StationFare(fromStation: 'Uttara North', toStation: 'Mirpur 10', fare: 40),
    StationFare(fromStation: 'Uttara North', toStation: 'Kazipara', fare: 50),
    StationFare(fromStation: 'Uttara North', toStation: 'Shewrapara', fare: 50),
    StationFare(fromStation: 'Uttara North', toStation: 'Agargaon', fare: 60),
    StationFare(fromStation: 'Uttara North', toStation: 'Bijoy Sarani', fare: 60),
    StationFare(fromStation: 'Uttara North', toStation: 'Farmgate', fare: 60),
    StationFare(fromStation: 'Uttara North', toStation: 'Karwan Bazar', fare: 70),
    StationFare(fromStation: 'Uttara North', toStation: 'Shahbag', fare: 80),
    StationFare(fromStation: 'Uttara North', toStation: 'Dhaka University', fare: 80),
    StationFare(fromStation: 'Uttara North', toStation: 'Bangladesh Secretariat', fare: 80),
    StationFare(fromStation: 'Uttara North', toStation: 'Motijheel', fare: 90),
    StationFare(fromStation: 'Uttara North', toStation: 'Kamalapur', fare: 90),

    // Uttara Center fares
    StationFare(fromStation: 'Uttara Center', toStation: 'Uttara South', fare: 20),
    StationFare(fromStation: 'Uttara Center', toStation: 'Pallabi', fare: 20),
    StationFare(fromStation: 'Uttara Center', toStation: 'Mirpur 11', fare: 20),
    StationFare(fromStation: 'Uttara Center', toStation: 'Mirpur 10', fare: 30),
    StationFare(fromStation: 'Uttara Center', toStation: 'Kazipara', fare: 40),
    StationFare(fromStation: 'Uttara Center', toStation: 'Shewrapara', fare: 40),
    StationFare(fromStation: 'Uttara Center', toStation: 'Agargaon', fare: 50),
    StationFare(fromStation: 'Uttara Center', toStation: 'Bijoy Sarani', fare: 50),
    StationFare(fromStation: 'Uttara Center', toStation: 'Farmgate', fare: 50),
    StationFare(fromStation: 'Uttara Center', toStation: 'Karwan Bazar', fare: 60),
    StationFare(fromStation: 'Uttara Center', toStation: 'Shahbag', fare: 70),
    StationFare(fromStation: 'Uttara Center', toStation: 'Dhaka University', fare: 70),
    StationFare(fromStation: 'Uttara Center', toStation: 'Bangladesh Secretariat', fare: 70),
    StationFare(fromStation: 'Uttara Center', toStation: 'Motijheel', fare: 80),
    StationFare(fromStation: 'Uttara Center', toStation: 'Kamalapur', fare: 80),

    // Uttara South fares
    StationFare(fromStation: 'Uttara South', toStation: 'Pallabi', fare: 20),
    StationFare(fromStation: 'Uttara South', toStation: 'Mirpur 11', fare: 20),
    StationFare(fromStation: 'Uttara South', toStation: 'Mirpur 10', fare: 20),
    StationFare(fromStation: 'Uttara South', toStation: 'Kazipara', fare: 30),
    StationFare(fromStation: 'Uttara South', toStation: 'Shewrapara', fare: 30),
    StationFare(fromStation: 'Uttara South', toStation: 'Agargaon', fare: 40),
    StationFare(fromStation: 'Uttara South', toStation: 'Bijoy Sarani', fare: 40),
    StationFare(fromStation: 'Uttara South', toStation: 'Farmgate', fare: 40),
    StationFare(fromStation: 'Uttara South', toStation: 'Karwan Bazar', fare: 50),
    StationFare(fromStation: 'Uttara South', toStation: 'Shahbag', fare: 60),
    StationFare(fromStation: 'Uttara South', toStation: 'Dhaka University', fare: 60),
    StationFare(fromStation: 'Uttara South', toStation: 'Bangladesh Secretariat', fare: 60),
    StationFare(fromStation: 'Uttara South', toStation: 'Motijheel', fare: 70),
    StationFare(fromStation: 'Uttara South', toStation: 'Kamalapur', fare: 70),

    // Pallabi fares
    StationFare(fromStation: 'Pallabi', toStation: 'Mirpur 11', fare: 20),
    StationFare(fromStation: 'Pallabi', toStation: 'Mirpur 10', fare: 20),
    StationFare(fromStation: 'Pallabi', toStation: 'Kazipara', fare: 20),
    StationFare(fromStation: 'Pallabi', toStation: 'Shewrapara', fare: 20),
    StationFare(fromStation: 'Pallabi', toStation: 'Agargaon', fare: 30),
    StationFare(fromStation: 'Pallabi', toStation: 'Bijoy Sarani', fare: 30),
    StationFare(fromStation: 'Pallabi', toStation: 'Farmgate', fare: 30),
    StationFare(fromStation: 'Pallabi', toStation: 'Karwan Bazar', fare: 40),
    StationFare(fromStation: 'Pallabi', toStation: 'Shahbag', fare: 50),
    StationFare(fromStation: 'Pallabi', toStation: 'Dhaka University', fare: 50),
    StationFare(fromStation: 'Pallabi', toStation: 'Bangladesh Secretariat', fare: 50),
    StationFare(fromStation: 'Pallabi', toStation: 'Motijheel', fare: 60),
    StationFare(fromStation: 'Pallabi', toStation: 'Kamalapur', fare: 60),

    // Mirpur 11 fares
    StationFare(fromStation: 'Mirpur 11', toStation: 'Mirpur 10', fare: 20),
    StationFare(fromStation: 'Mirpur 11', toStation: 'Kazipara', fare: 20),
    StationFare(fromStation: 'Mirpur 11', toStation: 'Shewrapara', fare: 20),
    StationFare(fromStation: 'Mirpur 11', toStation: 'Agargaon', fare: 30),
    StationFare(fromStation: 'Mirpur 11', toStation: 'Bijoy Sarani', fare: 30),
    StationFare(fromStation: 'Mirpur 11', toStation: 'Farmgate', fare: 30),
    StationFare(fromStation: 'Mirpur 11', toStation: 'Karwan Bazar', fare: 40),
    StationFare(fromStation: 'Mirpur 11', toStation: 'Shahbag', fare: 50),
    StationFare(fromStation: 'Mirpur 11', toStation: 'Dhaka University', fare: 50),
    StationFare(fromStation: 'Mirpur 11', toStation: 'Bangladesh Secretariat', fare: 50),
    StationFare(fromStation: 'Mirpur 11', toStation: 'Motijheel', fare: 60),
    StationFare(fromStation: 'Mirpur 11', toStation: 'Kamalapur', fare: 60),

    // Mirpur 10 fares
    StationFare(fromStation: 'Mirpur 10', toStation: 'Kazipara', fare: 20),
    StationFare(fromStation: 'Mirpur 10', toStation: 'Shewrapara', fare: 20),
    StationFare(fromStation: 'Mirpur 10', toStation: 'Agargaon', fare: 20),
    StationFare(fromStation: 'Mirpur 10', toStation: 'Bijoy Sarani', fare: 30),
    StationFare(fromStation: 'Mirpur 10', toStation: 'Farmgate', fare: 30),
    StationFare(fromStation: 'Mirpur 10', toStation: 'Karwan Bazar', fare: 40),
    StationFare(fromStation: 'Mirpur 10', toStation: 'Shahbag', fare: 50),
    StationFare(fromStation: 'Mirpur 10', toStation: 'Dhaka University', fare: 50),
    StationFare(fromStation: 'Mirpur 10', toStation: 'Bangladesh Secretariat', fare: 50),
    StationFare(fromStation: 'Mirpur 10', toStation: 'Motijheel', fare: 60),
    StationFare(fromStation: 'Mirpur 10', toStation: 'Kamalapur', fare: 60),

    // Kazipara fares
    StationFare(fromStation: 'Kazipara', toStation: 'Shewrapara', fare: 20),
    StationFare(fromStation: 'Kazipara', toStation: 'Agargaon', fare: 20),
    StationFare(fromStation: 'Kazipara', toStation: 'Bijoy Sarani', fare: 20),
    StationFare(fromStation: 'Kazipara', toStation: 'Farmgate', fare: 30),
    StationFare(fromStation: 'Kazipara', toStation: 'Karwan Bazar', fare: 40),
    StationFare(fromStation: 'Kazipara', toStation: 'Shahbag', fare: 50),
    StationFare(fromStation: 'Kazipara', toStation: 'Dhaka University', fare: 50),
    StationFare(fromStation: 'Kazipara', toStation: 'Bangladesh Secretariat', fare: 50),
    StationFare(fromStation: 'Kazipara', toStation: 'Motijheel', fare: 60),
    StationFare(fromStation: 'Kazipara', toStation: 'Kamalapur', fare: 60),

    // Shewrapara fares
    StationFare(fromStation: 'Shewrapara', toStation: 'Agargaon', fare: 20),
    StationFare(fromStation: 'Shewrapara', toStation: 'Bijoy Sarani', fare: 20),
    StationFare(fromStation: 'Shewrapara', toStation: 'Farmgate', fare: 20),
    StationFare(fromStation: 'Shewrapara', toStation: 'Karwan Bazar', fare: 30),
    StationFare(fromStation: 'Shewrapara', toStation: 'Shahbag', fare: 40),
    StationFare(fromStation: 'Shewrapara', toStation: 'Dhaka University', fare: 40),
    StationFare(fromStation: 'Shewrapara', toStation: 'Bangladesh Secretariat', fare: 40),
    StationFare(fromStation: 'Shewrapara', toStation: 'Motijheel', fare: 50),
    StationFare(fromStation: 'Shewrapara', toStation: 'Kamalapur', fare: 50),

    // Agargaon fares
    StationFare(fromStation: 'Agargaon', toStation: 'Bijoy Sarani', fare: 20),
    StationFare(fromStation: 'Agargaon', toStation: 'Farmgate', fare: 20),
    StationFare(fromStation: 'Agargaon', toStation: 'Karwan Bazar', fare: 20),
    StationFare(fromStation: 'Agargaon', toStation: 'Shahbag', fare: 30),
    StationFare(fromStation: 'Agargaon', toStation: 'Dhaka University', fare: 30),
    StationFare(fromStation: 'Agargaon', toStation: 'Bangladesh Secretariat', fare: 30),
    StationFare(fromStation: 'Agargaon', toStation: 'Motijheel', fare: 40),
    StationFare(fromStation: 'Agargaon', toStation: 'Kamalapur', fare: 40),

    // Bijoy Sarani fares
    StationFare(fromStation: 'Bijoy Sarani', toStation: 'Farmgate', fare: 20),
    StationFare(fromStation: 'Bijoy Sarani', toStation: 'Karwan Bazar', fare: 20),
    StationFare(fromStation: 'Bijoy Sarani', toStation: 'Shahbag', fare: 30),
    StationFare(fromStation: 'Bijoy Sarani', toStation: 'Dhaka University', fare: 30),
    StationFare(fromStation: 'Bijoy Sarani', toStation: 'Bangladesh Secretariat', fare: 30),
    StationFare(fromStation: 'Bijoy Sarani', toStation: 'Motijheel', fare: 40),
    StationFare(fromStation: 'Bijoy Sarani', toStation: 'Kamalapur', fare: 40),

    // Farmgate fares
    StationFare(fromStation: 'Farmgate', toStation: 'Karwan Bazar', fare: 20),
    StationFare(fromStation: 'Farmgate', toStation: 'Shahbag', fare: 20),
    StationFare(fromStation: 'Farmgate', toStation: 'Dhaka University', fare: 20),
    StationFare(fromStation: 'Farmgate', toStation: 'Bangladesh Secretariat', fare: 20),
    StationFare(fromStation: 'Farmgate', toStation: 'Motijheel', fare: 30),
    StationFare(fromStation: 'Farmgate', toStation: 'Kamalapur', fare: 30),

    // Karwan Bazar fares
    StationFare(fromStation: 'Karwan Bazar', toStation: 'Shahbag', fare: 20),
    StationFare(fromStation: 'Karwan Bazar', toStation: 'Dhaka University', fare: 20),
    StationFare(fromStation: 'Karwan Bazar', toStation: 'Bangladesh Secretariat', fare: 20),
    StationFare(fromStation: 'Karwan Bazar', toStation: 'Motijheel', fare: 20),
    StationFare(fromStation: 'Karwan Bazar', toStation: 'Kamalapur', fare: 30),

    // Shahbag fares
    StationFare(fromStation: 'Shahbag', toStation: 'Dhaka University', fare: 10),
    StationFare(fromStation: 'Shahbag', toStation: 'Bangladesh Secretariat', fare: 10),
    StationFare(fromStation: 'Shahbag', toStation: 'Motijheel', fare: 20),
    StationFare(fromStation: 'Shahbag', toStation: 'Kamalapur', fare: 20),

    // Dhaka University fares
    StationFare(fromStation: 'Dhaka University', toStation: 'Bangladesh Secretariat', fare: 10),
    StationFare(fromStation: 'Dhaka University', toStation: 'Motijheel', fare: 10),
    StationFare(fromStation: 'Dhaka University', toStation: 'Kamalapur', fare: 20),

    // Bangladesh Secretariat fares
    StationFare(fromStation: 'Bangladesh Secretariat', toStation: 'Motijheel', fare: 10),
    StationFare(fromStation: 'Bangladesh Secretariat', toStation: 'Kamalapur', fare: 10),

    // Motijheel fares
    StationFare(fromStation: 'Motijheel', toStation: 'Kamalapur', fare: 10),
  ];

  int getFare(String fromStation, String toStation) {
    StationFare? fare = _fares.firstWhere(
          (fare) => fare.fromStation == fromStation && fare.toStation == toStation,
      orElse: () => StationFare(fromStation: fromStation, toStation: toStation, fare: 0), // Default fare if not found
    );
    return fare.fare;
  }
}
