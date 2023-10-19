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
              fit: BoxFit.cover)),
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
                  height: 60,
                ),
                TextField(
                  controller: _input,
                  maxLines: 8,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(40.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 5, //<-- SEE HERE
                        color: Color.fromARGB(255, 168, 78, 220),
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3, //<-- SEE HERE
                        color: Color.fromARGB(255, 168, 78, 220),
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: Text("Meow")),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _output,
                  maxLines: 8,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(40.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 5, //<-- SEE HERE
                        color: Color.fromARGB(255, 168, 78, 220),
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3, //<-- SEE HERE
                        color: Color.fromARGB(255, 168, 78, 220),
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
