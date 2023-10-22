import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuko_cipher/constants.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController _input = TextEditingController();
  TextEditingController _output = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                TextField(
                  controller: _input,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 11,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFEBDBFA),
                    contentPadding: EdgeInsets.all(40.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3, //<-- SEE HERE
                        color: const Color(0xFF9B71F1),
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2, //<-- SEE HERE
                        color: const Color(0xFF9B71F1),
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.loose,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _output.text = nukoCipher(_input.text);
                        });
                      },
                      child: Text(
                        "encode",
                        style: GoogleFonts.pressStart2p(
                          fontSize: 14,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 60),
                        backgroundColor: const Color(0xFFF1B671),
                        foregroundColor: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 40,
                      child: SizedBox(
                          height: 56,
                          width: 69,
                          child: Image.asset("assets/images/paw.png")),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _output,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFFD23DA),
                  ),
                  maxLines: 11,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFFADBF1),
                    contentPadding: EdgeInsets.all(40.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3, //<-- SEE HERE
                        color: const Color(0xFFFD23DA),
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2, //<-- SEE HERE
                        color: const Color(0xFFFD23DA),
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String nukoCipher(String input) {
    input = input.toLowerCase();
    Random random = Random();
    String output = "";
    List<String> words = input.split(
      ' ',
    );
    for (String word in words) {
      if (replacements.containsKey(word)) {
        word = replacements[word];
      }
      output += word + " ";
    }
    int pref_index = random.nextInt(6);
    int suff_index = random.nextInt(3);
    return prefixes[pref_index] + " $output " + suffixes[suff_index];
  }
}
