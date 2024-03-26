import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../../utils/Global.dart';

class PDFPage extends StatefulWidget {
  const PDFPage({super.key});

  @override
  State<PDFPage> createState() => _PDFPageState();
}

class _PDFPageState extends State<PDFPage> {
  Future<Uint8List> loadPdf() async {
    ByteData byteData = await rootBundle.load("lib/assets/images/profile.png");
    pw.Document doc = pw.Document();

    doc.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            children: [
              pw.Container(
                height: 150,
                width: double.infinity,
                color: PdfColors.blue,
                child: pw.Row(
                  children: [
                    pw.Container(
                      height: 120,
                      width: 120,
                      margin: const pw.EdgeInsets.all(15),
                      decoration: pw.BoxDecoration(
                        color: PdfColors.white,
                        borderRadius: const pw.BorderRadius.all(
                          pw.Radius.circular(60),
                        ),
                        image: pw.DecorationImage(
                          image: pw.MemoryImage(
                            (Global.global.image != null)
                                ? Global.global.image!.readAsBytesSync()
                                : byteData.buffer.asUint8List(),
                          ),
                          fit: pw.BoxFit.cover,
                        ),
                      ),
                      // child: ByteData.view(profile.buffer),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Text(
                      Global.global.Name.toString(),
                      style: pw.TextStyle(
                        fontSize: 28,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.white,
                      ),
                    ),
                  ],
                ),
              ),
              pw.SizedBox(height: 30),
              pw.Row(
                // mainAxisAlignment: pw.MainAxisAlignment.center,
                children: [
//Left Side
                  pw.Container(
                    height: 548,
                    width: 190,
                    // color: PdfColors.grey,
                    child: pw.Column(
                      children: [
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            'CONTACT',
                            style: pw.TextStyle(
                              fontSize: 19,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            Global.global.contact.toString(),
                            style: pw.TextStyle(
                              fontSize: 18,
                            ),
                            textAlign: pw.TextAlign.left,
                          ),
                        ),
                        pw.Text(
                          Global.global.email.toString(),
                          style: pw.TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        pw.Text(
                          Global.global.address.toString(),
                          style: pw.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Divider(),
                        pw.SizedBox(height: 10),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            'ABOUT ME',
                            style: pw.TextStyle(
                              fontSize: 19,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Text(
                          'A multitasking, adaptable individual '
                          'with a passion for work, gaming, travelling, '
                          '& Flutter development. ',
                          style: pw.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Divider(),
                        pw.SizedBox(height: 10),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            'TECHNICAL SKILLS',
                            style: pw.TextStyle(
                              fontSize: 19,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        // ...List.generate(
                        //   Global.controller.length,
                        //   (index) => pw.Align(
                        //     alignment: pw.Alignment.centerLeft,
                        //     child: pw.Text(
                        //       '- ' + Global.controller[index].text,
                        //       style: pw.TextStyle(fontSize: 18),
                        //     ),
                        //   ),
                        // ),
                        // pw.Text()
                      ],
                    ),
                  ),
                  pw.Container(
                    width: 50,
                    // color: PdfColors.black,
                    // child: pw.Transform.rotate(
                    //   angle: pi / 2,
                    //   child: pw.Divider(
                    //     indent: 0,
                    //   ),
                    // ),
                  ),
//Right Side
                  pw.Container(
                    // alignment: pw.Alignment.centerRight,
                    height: 548,
                    width: 280,
                    // color: PdfColors.grey,
                    child: pw.Column(
                      children: [
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            'EDUCATION',
                            style: pw.TextStyle(
                              fontSize: 18,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        // pw.Align(
                        //   alignment: pw.Alignment.centerLeft,
                        //   child: pw.Text(
                        //     '\t\t\t- ' + Global.global.degree.toString(),
                        //     style: pw.TextStyle(
                        //       fontSize: 17,
                        //       fontWeight: pw.FontWeight.bold,
                        //     ),
                        //     textAlign: pw.TextAlign.left,
                        //   ),
                        // ),
                        // pw.Align(
                        //   alignment: pw.Alignment.centerLeft,
                        //   child: pw.Text(
                        //     '\t\t\t  ' +
                        //         Global.global.clg.toString() +
                        //         ' - ' +
                        //         Global.global.year.toString(),
                        //     style: pw.TextStyle(
                        //       fontSize: 17,
                        //     ),
                        //     textAlign: pw.TextAlign.left,
                        //   ),
                        // ),
                        pw.SizedBox(height: 10),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            '\t\t\t- HSC (Science / 57%)',
                            style: pw.TextStyle(
                              fontSize: 17,
                              fontWeight: pw.FontWeight.bold,
                            ),
                            textAlign: pw.TextAlign.left,
                          ),
                        ),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            '\t\t\t  Ankur Vidhyabhavan - March \n'
                            '\t\t\t  2022-23',
                            style: pw.TextStyle(
                              fontSize: 17,
                            ),
                            textAlign: pw.TextAlign.left,
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            '\t\t\t- SSC (91%)',
                            style: pw.TextStyle(
                              fontSize: 17,
                              fontWeight: pw.FontWeight.bold,
                            ),
                            textAlign: pw.TextAlign.left,
                          ),
                        ),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            '\t\t\t  Hansvahini Highschool - March \n'
                            '\t\t\t  2020-21',
                            style: pw.TextStyle(
                              fontSize: 17,
                            ),
                            textAlign: pw.TextAlign.left,
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            'CERTIFICATE COURSES',
                            style: pw.TextStyle(
                              fontSize: 19,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            '\t\t\t- Master In Flutter',
                            style: pw.TextStyle(
                              fontSize: 17,
                              fontWeight: pw.FontWeight.bold,
                            ),
                            textAlign: pw.TextAlign.left,
                          ),
                        ),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            '\t\t\t  Red & White Multimedia\n'
                            '\t\t\t  Education , 2023-24',
                            style: pw.TextStyle(
                              fontSize: 17,
                            ),
                            textAlign: pw.TextAlign.left,
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Divider(),
                        pw.SizedBox(height: 10),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            'WORK HISTORY',
                            style: pw.TextStyle(
                              fontSize: 19,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            '\t\t\t  E-Commerce App',
                            style: pw.TextStyle(
                              fontSize: 17,
                              fontWeight: pw.FontWeight.bold,
                            ),
                            textAlign: pw.TextAlign.left,
                          ),
                        ),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            '\t\t\t\t\t\t- Products\n'
                            '\t\t\t\t\t\t- Filter Option\n'
                            '\t\t\t\t\t\t- Products Details\n'
                            '\t\t\t\t\t\t- Add To Cart\n'
                            '\t\t\t\t\t\t- Remove To cart\n'
                            '\t\t\t\t\t\t- Quantity & Price\n',
                            style: const pw.TextStyle(
                              fontSize: 17,
                            ),
                            textAlign: pw.TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
    //3. Convert into Uint8List
    return doc.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Certified Courses',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: PdfPreview(
        pdfFileName: 'RESUME_${Global.global.Name}.pdf',
        build: (format) => loadPdf(),
      ),
    );
  }
}
