import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
@RoutePage()
class RecognitionScreen extends StatefulWidget {
  const RecognitionScreen({super.key, required this.xFile});

  final XFile xFile;

  @override
  State<RecognitionScreen> createState() => _RecognitionScreenState();
}

class _RecognitionScreenState extends State<RecognitionScreen> {
  bool isScanning = false;
  String scannedText = '';
  bool isList = false;

  Future<void> getRecognizer(XFile img, bool? isList) async {
    final selectedImage = InputImage.fromFilePath(img.path);
    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
    RecognizedText recognizedText =
        await textRecognizer.processImage(selectedImage);
    await textRecognizer.close();
    scannedText = '';

    for (TextBlock block in recognizedText.blocks) {
      for (TextLine line in block.lines) {
        isList!
            ? scannedText = '$scannedText\n${line.text}'
            : scannedText = '$scannedText ${line.text}';

      }
      print('Block text: ${block.text}');
      print("scanned text : "+scannedText);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Selected Image',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {

          setState(() => isScanning = true);
          await getRecognizer(widget.xFile, isList).then((value) {
            setState(() => isScanning = false);
            if (mounted && context.mounted) {
              Navigator.pop(
                context,
                scannedText.isEmpty
                    ? 'No text detected, choose a different image'
                    : scannedText,
              );
            }
          });
        },
        label: const Text('Scan'),
        icon: const Icon(Icons.check_outlined),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 500,
                  width: double.infinity,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.file(
                          fit: BoxFit.fitWidth, File(widget.xFile.path))),
                ),
                const Divider(),
                CheckboxListTile(
                  title: const Text(
                    'Is there a list in the image?',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: const Text(
                    'Select this option to record the sentences in the image line by line.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.platform,
                  value: isList,
                  checkColor: Colors.green,
                  activeColor: Colors.transparent,
                  onChanged: (bool? val) {
                    setState(() {
                      isList = val!;
                    });
                  },
                ),
              ],
            ),
            Visibility(
              visible: isScanning ? true : false,
              child: RotatedBox(
                  quarterTurns: 0,
                  child: LottieBuilder.asset('assets/scan_img.json')),
            ),
          ],
        ),
      ),
    );
  }
}
