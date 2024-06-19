import 'package:flutter/material.dart';

import 'package:barcode_widget/barcode_widget.dart';

class Tickets extends StatelessWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purchase Ticket'),
      ),
      body: Column(
        children: [
          Expanded(
            child: TicketForm(),
          ),
          // Adding barcode beneath TicketForm
        ],
      ),
    );
  }
}

class TicketForm extends StatefulWidget {
  @override
  _TicketFormState createState() => _TicketFormState();
}

class _TicketFormState extends State<TicketForm> {
  final _formKey = GlobalKey<FormState>();
  String? _fromStation;
  String? _toStation;
  DateTime? _selectedDate;
  String? _selectedTime;

  List<String> _stations = [
    'Uttara North',
    'Uttara Center',
    'Uttara South',
    'Pallabi',
    'Mirpur11',
    'Mirpur10',
    'Kazipara',
    'Shewrapara',
    'Agargaon',
    'Bijoysaraoni',
    'Farmgate',
    'Kawranbazar',
    'Shahbagh',
    'Dhaka University',
    'Sochibaloy',
    'Motijhil',
    'Komlapur',
  ];

  List<String> _timeOptions = List.generate(73, (index) {
    int hour = index ~/ 6;
    int minute = (index % 6) * 10;
    return '${hour + 7}:${minute == 0 ? '00' : minute}';
  });

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'From',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a station';
                }
                return null;
              },
              onChanged: (value) {
                _fromStation = value;
              },
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'To',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a station';
                }
                return null;
              },
              onChanged: (value) {
                _toStation = value;
              },
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              readOnly: true,
              decoration: const InputDecoration(
                labelText: 'Date',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today),
              ),
              onTap: () {
                _selectDate(context);
              },
              validator: (value) {
                if (_selectedDate == null) {
                  return 'Please select a date';
                }
                return null;
              },
              controller: TextEditingController(
                text: _selectedDate != null
                    ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                    : '',
              ),
            ),
            const SizedBox(height: 20.0),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Time',
                border: OutlineInputBorder(),
              ),
              value: _selectedTime,
              items: _timeOptions.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  _selectedTime = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select a time';
                }
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Ticket ticket = Ticket(
                      fromStation: _fromStation!,
                      toStation: _toStation!,
                      date: _selectedDate!,
                      time: _selectedTime!,
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TicketDisplay(ticket: ticket),
                      ),
                    );
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 50.0),
                  child: Text(
                    'Proceed',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Ticket {
  final String fromStation;
  final String toStation;
  final DateTime date;
  final String time;

  Ticket({
    required this.fromStation,
    required this.toStation,
    required this.date,
    required this.time,
  });
}

class TicketDisplay extends StatelessWidget {
  final Ticket ticket;

  TicketDisplay({required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket Details'),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              elevation: 4.0, // Adjust elevation as needed
              child: Container(
                width: 300.0,
                height: 300.0, // Adjust the width as needed
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/mrt1.png'), // Add your own image asset for the ticket background
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From: ${ticket.fromStation}',
                      style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      'To: ${ticket.toStation}',
                      style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${ticket.date.day}/${ticket.date.month}/${ticket.date.year}',
                          style: const TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                        Text(
                          'Time: ${ticket.time}',
                          style: const TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            TicketBarcode(ticket: ticket), // Displaying barcode beneath the ticket
          ],
        ),
      ),
    );
  }
}

class TicketBarcode extends StatelessWidget {
  final Ticket ticket;

  TicketBarcode({required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Scan to Redeem',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          BarcodeWidget(
            barcode: Barcode.qrCode(),
            color: Colors.black,
            data: '${ticket.fromStation}_${ticket.toStation}_${ticket.date}_${ticket.time}', // Sample ticket data encoded in barcode
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}
