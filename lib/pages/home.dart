import 'package:flutter/material.dart';

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
                        width: 2, //<-- SEE HERE
                        color: const Color(0xFF9B71F1),
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1, //<-- SEE HERE
                        color: const Color(0xFF9B71F1),
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "encode",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 60),
                    backgroundColor: const Color(0xFFF1B671),
                    foregroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _output,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 11,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFFADBF1),
                    contentPadding: EdgeInsets.all(40.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2, //<-- SEE HERE
                        color: const Color(0xFFFD23DA),
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1, //<-- SEE HERE
                        color: const Color(0xFFFD23DA),
                      ),
                      borderRadius: BorderRadius.circular(50.0),
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
}
