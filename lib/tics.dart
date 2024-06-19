import 'package:flutter/material.dart';

class TrainTicketSearch extends StatefulWidget {
  const TrainTicketSearch({super.key});

  @override
  State<TrainTicketSearch> createState() => _TrainTicketSearchState();
}

class _TrainTicketSearchState extends State<TrainTicketSearch> {
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

  String? _selectedFromStation;
  String? _selectedToStation;
  final outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5.0), // Adjust border radius as needed
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            height: 200.0, // Adjust height as needed
            width: double.infinity, // Allow container to expand horizontally
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  // Adjust shadow color as needed
                  spreadRadius: 5,
                  // Adjust shadow spread radius as needed
                  blurRadius: 7,
                  // Adjust shadow blur radius as needed
                  offset: Offset(0, 3), // Adjust shadow offset as needed
                )
              ],
            ),
            child: Column(
              // Use Column for vertical layout
              children: [
                // Search result area (initially empty, replace with your logic)
                const Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Search Results', // Replace with actual search results
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  // Use Expanded for flexible space between elements
                  child: Column(
                    // Use Row for horizontal layout of dropdowns
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          value: _selectedFromStation,
                          hint: Text('From Station'),
                          icon: Icon(Icons.keyboard_arrow_down),
                          items: _stations
                              .map((station) => DropdownMenuItem(
                                    value: station,
                                    child: Text(station),
                                  ))
                              .toList(),
                          onChanged: (value) =>
                              setState(() => _selectedFromStation = value!),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(15.0, 7.0, 15.0, 7.0),
                            fillColor: Colors.blueGrey,
                            // Add fillColor to set background color
                            filled: true,
                            border: outlineInputBorder,
                            enabledBorder: outlineInputBorder,
                            focusedBorder: outlineInputBorder,
                          ),
                        ),
                      ),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          value: _selectedToStation,
                          hint: Text('To Station'),
                          icon: Icon(Icons.keyboard_arrow_down),
                          items: _stations
                              .map((station) => DropdownMenuItem(
                                    value: station,
                                    child: Text(station),
                                  ))
                              .toList(),
                          onChanged: (value) =>
                              setState(() => _selectedToStation = value!),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(15.0, 7.0, 15.0, 7.0),
                            border: outlineInputBorder,
                            fillColor: Colors.blueGrey,
                            // Add fillColor to set background color
                            filled:
                                true, // Set filled to true to apply fillColor
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
    TextButton(onPressed: (){}, child: Text('Confirm', style: TextStyle(fontSize: 15,color: Colors.green),))
          // Add more UI elements here (e.g., search button, results)
        ],
      ),
    );
  }
}
