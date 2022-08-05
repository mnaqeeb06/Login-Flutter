import 'package:flutter/material.dart';

import 'TextField.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Login")),
          backgroundColor: Colors.red,
        ),
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(25),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.security,
                  size: 150,
                  color: Colors.red,
                ),
                const Text(
                  "HELLO AGAIN!",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Wellcome Back, you've been missed!"),
                const SizedBox(
                  height: 30,
                ),
                /*email*/
                CustomTextField("Enter Your Name"),
                const SizedBox(
                  height: 5,
                ),

                /*password*/
                CustomTextField("Enter Your Password"),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  // this will give height of 55 and maximum width
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(55),
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),

                  onPressed: () {},
                  child: const Text("Sign In"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Not a member?  "),
                      Text(
                        "Register Now!",
                        style: TextStyle(color: Colors.blue),
                      )
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
