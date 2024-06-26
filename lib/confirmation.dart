// This code have only confirmation and downloadable tic .don have backtohome button
//
// import 'package:flutter/material.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';
// import 'package:barcode_widget/barcode_widget.dart';
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
//   final String serialNumber = '256154';
//   final String barcode = 'ABC-abc-1234';
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
//   Future<void> _generatePdf(BuildContext context) async {
//     final pdf = pw.Document();
//
//     pdf.addPage(
//       pw.Page(
//         build: (pw.Context context) {
//           return pw.Container(
//             padding: pw.EdgeInsets.all(10),
//             decoration: pw.BoxDecoration(
//               color: PdfColors.white,
//               borderRadius: pw.BorderRadius.circular(10),
//               border: pw.Border.all(color: PdfColors.green),
//             ),
//             child: pw.Column(
//               crossAxisAlignment: pw.CrossAxisAlignment.start,
//               children: [
//                 pw.Row(
//                   mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                   children: [
//                     pw.Text(
//                       'One Way',
//                       style: pw.TextStyle(
//                         fontWeight: pw.FontWeight.bold,
//                       ),
//                     ),
//                     pw.Text(
//                       'SL. NO. $serialNumber',
//                       style: pw.TextStyle(
//                         fontWeight: pw.FontWeight.bold,
//                         color: PdfColors.green,
//                       ),
//                     ),
//                   ],
//                 ),
//                 pw.SizedBox(height: 10),
//                 pw.Row(
//                   children: [
//                     pw.Expanded(
//                       child: pw.Column(
//                         crossAxisAlignment: pw.CrossAxisAlignment.start,
//                         children: [
//                           pw.Text('From'),
//                           pw.Text(
//                             fromStation,
//                             style: pw.TextStyle(
//                               fontWeight: pw.FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     pw.Container(
//                       width: 1,
//                       height: 30,
//                       color: PdfColors.green,
//                     ),
//                     pw.SizedBox(width: 10),
//                     pw.Expanded(
//                       child: pw.Column(
//                         crossAxisAlignment: pw.CrossAxisAlignment.start,
//                         children: [
//                           pw.Text('To'),
//                           pw.Text(
//                             toStation,
//                             style: pw.TextStyle(
//                               fontWeight: pw.FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 pw.SizedBox(height: 10),
//                 pw.Container(
//                   width: double.infinity,
//                   height: 1,
//                   color: PdfColors.green,
//                 ),
//                 pw.SizedBox(height: 10),
//                 pw.Row(
//                   children: [
//                     pw.Expanded(
//                       child: pw.Column(
//                         crossAxisAlignment: pw.CrossAxisAlignment.start,
//                         children: [
//                           pw.Text('Onboarding'),
//                           pw.Text(
//                             onboardingTime,
//                             style: pw.TextStyle(
//                               fontWeight: pw.FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     pw.Container(
//                       width: 1,
//                       height: 30,
//                       color: PdfColors.green,
//                     ),
//                     pw.SizedBox(width: 10),
//                     pw.Expanded(
//                       child: pw.Column(
//                         crossAxisAlignment: pw.CrossAxisAlignment.start,
//                         children: [
//                           pw.Text('Arrival'),
//                           pw.Text(
//                             arrivalTime,
//                             style: pw.TextStyle(
//                               fontWeight: pw.FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 pw.SizedBox(height: 10),
//                 pw.Container(
//                   width: double.infinity,
//                   height: 1,
//                   color: PdfColors.green,
//                 ),
//                 pw.SizedBox(height: 10),
//                 pw.Row(
//                   mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                   children: [
//                     pw.Column(
//                       crossAxisAlignment: pw.CrossAxisAlignment.start,
//                       children: [
//                         pw.Text('Train No.'),
//                         pw.Text(
//                           trainNumber,
//                           style: pw.TextStyle(
//                             fontWeight: pw.FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ],
//                     ),
//                     pw.Column(
//                       crossAxisAlignment: pw.CrossAxisAlignment.start,
//                       children: [
//                         pw.Text('Fare'),
//                         pw.Text(
//                           'BDT ${fare.toStringAsFixed(2)}',
//                           style: pw.TextStyle(
//                             fontWeight: pw.FontWeight.bold,
//                             fontSize: 18,
//                             color: PdfColors.green,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 pw.SizedBox(height: 10),
//                 pw.Row(
//                   mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                   children: [
//                     pw.Column(
//                       crossAxisAlignment: pw.CrossAxisAlignment.start,
//                       children: [
//                         pw.Text('Date'),
//                         pw.Text(
//                           '${date.day}/${date.month}/${date.year}',
//                           style: pw.TextStyle(
//                             fontWeight: pw.FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ],
//                     ),
//                     pw.Column(
//                       crossAxisAlignment: pw.CrossAxisAlignment.start,
//                       children: [
//                         pw.Text('No. of Ticket'),
//                         pw.Text(
//                           numberOfTickets.toString(),
//                           style: pw.TextStyle(
//                             fontWeight: pw.FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 pw.SizedBox(height: 10),
//                 pw.Divider(color: PdfColors.green),
//                 pw.Row(
//                   mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                   children: [
//                     pw.Text(
//                       'Total:',
//                       style: pw.TextStyle(
//                         fontWeight: pw.FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                     pw.Text(
//                       'BDT ${totalFare.toStringAsFixed(2)}',
//                       style: pw.TextStyle(
//                         fontWeight: pw.FontWeight.bold,
//                         fontSize: 16,
//                         color: PdfColors.green,
//                       ),
//                     ),
//                   ],
//                 ),
//                 pw.SizedBox(height: 10),
//                 pw.BarcodeWidget(
//                   data: barcode,
//                   barcode: pw.Barcode.code128(),
//                   width: double.infinity,
//                   height: 50,
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//
//     await Printing.layoutPdf(
//         onLayout: (PdfPageFormat format) async => pdf.save());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
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
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(height: 25),
//               Text(
//                 'Confirmation',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Icon(
//                 Icons.verified,
//                 color: Colors.white,
//                 size: 60,
//               ),
//               Text(
//                 'You are all set!',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                 ),
//               ),
//               Text(
//                 'Your purchase was successful.',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 14,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 margin: EdgeInsets.symmetric(horizontal: 20.0),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10.0),
//                   border: Border.all(color: Colors.green),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'One Way',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           'SL. NO. $serialNumber',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.green,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text('From'),
//                               Text(
//                                 fromStation,
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 1,
//                           height: 30,
//                           color: Colors.green,
//                         ),
//                         SizedBox(width: 10),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text('To'),
//                               Text(
//                                 toStation,
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10),
//                     Container(
//                       width: double.infinity,
//                       height: 1,
//                       color: Colors.green,
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text('Onboarding'),
//                               Text(
//                                 onboardingTime,
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 1,
//                           height: 30,
//                           color: Colors.green,
//                         ),
//                         SizedBox(width: 10),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text('Arrival'),
//                               Text(
//                                 arrivalTime,
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10),
//                     Container(
//                       width: double.infinity,
//                       height: 1,
//                       color: Colors.green,
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Train No.'),
//                             Text(
//                               trainNumber,
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Fare'),
//                             Text(
//                               'BDT ${fare.toStringAsFixed(2)}',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                                 color: Colors.green,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Date'),
//                             Text(
//                               '${date.day}/${date.month}/${date.year}',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('No. of Ticket'),
//                             Text(
//                               numberOfTickets.toString(),
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10),
//                     Divider(color: Colors.green),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Total:',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                         Text(
//                           'BDT ${totalFare.toStringAsFixed(2)}',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                             color: Colors.green,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10),
//                     BarcodeWidget(
//                       data: barcode,
//                       barcode: Barcode.code128(),
//                       width: double.infinity,
//                       height: 50,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   _generatePdf(context);
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.green,
//                   minimumSize: Size(double.infinity, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                 ),
//                 child: Text('Download Ticket'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// } //
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:barcode_widget/barcode_widget.dart';

class Confirmation extends StatefulWidget {
  final String fromStation;
  final String toStation;
  final String trainNumber;
  final double fare;
  final DateTime date;
  final String onboardingTime;
  final String arrivalTime;
  final int numberOfTickets;

  Confirmation({
    required this.fromStation,
    required this.toStation,
    required this.trainNumber,
    required this.fare,
    required this.date,
    required this.onboardingTime,
    required this.arrivalTime,
    required this.numberOfTickets,
  });

  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  bool _isDownloaded = false;

  void _generatePdf(BuildContext context) async {
    final pdf = pw.Document();
    final barcode =
        '${widget.trainNumber}-${widget.date.year}${widget.date.month}${widget.date.day}';

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text('From: ${widget.fromStation}',
                  style: pw.TextStyle(
                      fontSize: 18, fontWeight: pw.FontWeight.bold)),
              pw.Text('To: ${widget.toStation}',
                  style: pw.TextStyle(
                      fontSize: 18, fontWeight: pw.FontWeight.bold)),
              pw.Divider(),
              pw.Text('Onboarding: ${widget.onboardingTime}',
                  style: pw.TextStyle(
                      fontSize: 18, fontWeight: pw.FontWeight.bold)),
              pw.Text('Arrival: ${widget.arrivalTime}',
                  style: pw.TextStyle(
                      fontSize: 18, fontWeight: pw.FontWeight.bold)),
              pw.Divider(),
              pw.Text('Train No.: ${widget.trainNumber}',
                  style: pw.TextStyle(
                      fontSize: 18, fontWeight: pw.FontWeight.bold)),
              pw.Text('Fare: BDT ${widget.fare.toStringAsFixed(2)}',
                  style: pw.TextStyle(
                      fontSize: 18,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.green)),
              pw.Divider(),
              pw.Text(
                  'Date: ${widget.date.day}/${widget.date.month}/${widget.date.year}',
                  style: pw.TextStyle(
                      fontSize: 18, fontWeight: pw.FontWeight.bold)),
              pw.Text('No. of Tickets: ${widget.numberOfTickets}',
                  style: pw.TextStyle(
                      fontSize: 18, fontWeight: pw.FontWeight.bold)),
              pw.Divider(),
              pw.Text(
                  'Total: BDT ${(widget.fare * widget.numberOfTickets).toStringAsFixed(2)}',
                  style: pw.TextStyle(
                      fontSize: 18,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.green)),
              pw.SizedBox(height: 20),
              pw.BarcodeWidget(
                data: barcode,
                barcode: pw.Barcode.code128(),
                width: double.infinity,
                height: 50,
              ),
            ],
          );
        },
      ),
    );

    await Printing.sharePdf(bytes: await pdf.save(), filename: 'ticket.pdf');

    setState(() {
      _isDownloaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final totalFare = widget.fare * widget.numberOfTickets;

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.35, 0.35],
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    'Confirmation',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(
                    Icons.verified,
                    color: Colors.white,
                    size: 60,
                  ),
                  const Text(
                    'You are all set!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Your purchase was successful!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.green),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('From'),
                                Text(
                                  widget.fromStation,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('To'),
                                Text(
                                  widget.toStation,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.green,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Onboarding'),
                                Text(
                                  widget.onboardingTime,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 1,
                              height: 30,
                              color: Colors.green,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Arrival'),
                                Text(
                                  widget.arrivalTime,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.green,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Train No.'),
                                Text(
                                  widget.trainNumber,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Fare'),
                                Text(
                                  'BDT ${widget.fare.toStringAsFixed(2)}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Date'),
                                Text(
                                  '${widget.date.day}/${widget.date.month}/${widget.date.year}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('No. of Ticket'),
                                Text(
                                  widget.numberOfTickets.toString(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Divider(color: Colors.green),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Total:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'BDT ${totalFare.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        BarcodeWidget(
                          data:
                              '${widget.trainNumber}-${widget.date.year}${widget.date.month}${widget.date.day}',
                          barcode: Barcode.code128(),
                          width: double.infinity,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _generatePdf(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Text('Download Ticket'),
                  ),
                ],
              ),
            ),
          ),
          if (_isDownloaded)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.verified,
                      color: Colors.green,
                      size: 60,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Download Successful!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _isDownloaded = false;
                        });
                      },
                      child: const Text(
                        'Back to Home',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
