import 'package:flutter/services.dart';
import 'package:get/get.dart';

class QuraanContetntController extends GetxController {
  RxString surahNam = ''.obs;
  RxList<String> surahContent = <String>[].obs; // To store content lines

  void readFile(int index) async {
    try {
      String fileSurah =
          await rootBundle.loadString('assets/assets/${index + 1}.txt');
      List<String> surahLines = fileSurah.split('\n');

      // Adding line numbers to each non-empty line
      List<String> numberedSurahLines = [];
      int lineNumber = 1; // Start line number from 1
      for (String line in surahLines) {
        if (line.trim().isNotEmpty) {
          // Check if the line is not empty
          numberedSurahLines.add('$lineNumber. $line');
          lineNumber++;
        }
      }

      surahContent.value = numberedSurahLines; // Update content
    } catch (e) {
      // Handle error loading surah file
    }
  }
}
