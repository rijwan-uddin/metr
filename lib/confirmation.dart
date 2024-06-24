// import 'package:flutter/material.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';
//
// class Confirmation extends StatelessWidget {
//   final String fromStation;
//   final String toStation;
//   final String trainNumber;
//   final double fare;
//   final DateTime date;
//   final String onboardingTime;
//   final String arrivalTime;
//   final int numberOfTickets;
//   final double totalFare;
//   final String ticketID = 'ABC-abc-1234'; // Example ticket ID
//
//   Confirmation({
//     required this.fromStation,
//     required this.toStation,
//     required this.trainNumber,
//     required this.fare,
//     required this.date,
//     required this.onboardingTime,
//     required this.arrivalTime,
//     required this.numberOfTickets,
//     required this.totalFare,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green,
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         elevation: 0,
//         title: Text('Confirmation'),
//       ),
//       body: Center(
//         child: Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.green, Colors.white],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               stops: [0.35, 0.35],
//             ),
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(height: 20),
//                 Container(
//                   margin: EdgeInsets.symmetric(horizontal: 20.0),
//                   padding: EdgeInsets.all(10.0),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10.0),
//                     border: Border.all(color: Colors.green),
//                   ),
//                   child: Column(
//                     children: [
//                       Text(
//                         'You are all set!',
//                         style: TextStyle(
//                           color: Colors.green,
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text('Your purchase was successful.'),
//                       SizedBox(height: 10),
//                       Container(
//                         padding: EdgeInsets.symmetric(vertical: 10),
//                         alignment: Alignment.centerLeft,
//                         child: Column(
//                           children: [
//                             Text(
//                               'From',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.normal,
//                                 fontSize: 14,
//                               ),
//                             ),
//                             Text(
//                               fromStation,
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                               ),
//                             ),
//                             SizedBox(height: 10),
//                             Text(
//                               'To',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.normal,
//                                 fontSize: 14,
//                               ),
//                             ),
//                             Text(
//                               toStation,
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Divider(color: Colors.green),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Train No.',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   fontSize: 14,
//                                 ),
//                               ),
//                               Text(
//                                 trainNumber,
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                               SizedBox(height: 10),
//                               Text(
//                                 'Date',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   fontSize: 14,
//                                 ),
//                               ),
//                               Text(
//                                 '${date.day}/${date.month}/${date.year}',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Onboarding',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   fontSize: 14,
//                                 ),
//                               ),
//                               Text(
//                                 onboardingTime,
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                               SizedBox(height: 10),
//                               Text(
//                                 'Arrival',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   fontSize: 14,
//                                 ),
//                               ),
//                               Text(
//                                 arrivalTime,
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       Divider(color: Colors.green),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             'Total:',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                           Text(
//                             'BDT ${totalFare.toStringAsFixed(2)}',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                               color: Colors.green,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Divider(color: Colors.green),
//                       Container(
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8),
//                           color: Colors.green,
//                         ),
//                         child: Text(
//                           ticketID,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       ElevatedButton(
//                         onPressed: _generatePdf,
//                         style: ElevatedButton.styleFrom(
//                           primary: Colors.green,
//                           minimumSize: Size(double.infinity, 50),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                         ),
//                         child: Text('Download Ticket'),
//                       ),
//                       SizedBox(height: 10),
//                       OutlinedButton(
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                         style: OutlinedButton.styleFrom(
//                           primary: Colors.green,
//                           side: BorderSide(color: Colors.green),
//                           minimumSize: Size(double.infinity, 50),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                         ),
//                         child: Text('Cancel'),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void _generatePdf() {
//     final doc = pw.Document();
//
//     doc.addPage(
//       pw.Page(
//         build: (pw.Context context) {
//           return pw.Center(
//             child: pw.Column(
//               children: [
//                 pw.Text('You are all set!', style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold)),
//                 pw.Text('Your purchase was successful.'),
//                 pw.SizedBox(height: 10),
//                 pw.Text('From: $fromStation', style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
//                 pw.Text('To: $toStation', style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
//                 pw.Divider(),
//                 pw.Text('Train No: $trainNumber', style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
//                 pw.Text('Date: ${date.day}/${date.month}/${date.year}', style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
//                 pw.Text('Onboarding: $onboardingTime', style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
//                 pw.Text('Arrival: $arrivalTime', style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
//                 pw.Divider(),
//                 pw.Text('Total: BDT ${totalFare.toStringAsFixed(2)}', style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold, color: PdfColor.fromHex('#008000'))),
//                 pw.Divider(),
//                 pw.BarcodeWidget(
//                   barcode: pw.Barcode.code128(),
//                   data: ticketID,
//                   width: 200,
//                   height: 80,
//                 ),
//                 pw.Text(ticketID, style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//
//
//   }
// }
import 'package:flutter/material.dart';

class Confirmation extends StatelessWidget {
  final String fromStation;
  final String toStation;
  final String trainNumber;
  final double fare;
  final DateTime date;
  final String onboardingTime;
  final String arrivalTime;
  final int numberOfTickets;
  final String ticketSerial;

  Confirmation({
    required this.fromStation,
    required this.toStation,
    required this.trainNumber,
    required this.fare,
    required this.date,
    required this.onboardingTime,
    required this.arrivalTime,
    required this.numberOfTickets,
    required this.ticketSerial,
  });

  @override
  Widget build(BuildContext context) {
    double totalFare = fare * numberOfTickets;
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmation'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              // Implement share functionality
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 80,
                ),
                SizedBox(height: 10),
                Text(
                  'You are all set!',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Your purchase was successful.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Chip(
                              label: Text('One Way'),
                              backgroundColor: Colors.white,
                            ),
                            Text(
                              'SL NO. $ticketSerial',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('From', style: TextStyle(fontSize: 16)),
                                    Text(
                                      fromStation,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Onboarding', style: TextStyle(fontSize: 16)),
                                    Text(
                                      onboardingTime,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('To', style: TextStyle(fontSize: 16)),
                                    Text(
                                      toStation,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Arrival', style: TextStyle(fontSize: 16)),
                                    Text(
                                      arrivalTime,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Divider(color: Colors.green[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Train No.', style: TextStyle(fontSize: 16)),
                                    Text(
                                      trainNumber,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text('Date', style: TextStyle(fontSize: 16)),
                                    Text(
                                      '${date.day}/${date.month}/${date.year}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Fare', style: TextStyle(fontSize: 16)),
                                    Text(
                                      'BDT ${fare.toStringAsFixed(2)}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text('No. of Ticket', style: TextStyle(fontSize: 16)),
                                    Text(
                                      numberOfTickets.toString(),
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(color: Colors.green[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'BDT ${totalFare.toStringAsFixed(2)}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.green[200]),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: Colors.green),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/barcode.png',
                                    height: 100,
                                  ),
                                  Text(
                                    ticketSerial,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Implement download ticket functionality
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text('Download Ticket'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
