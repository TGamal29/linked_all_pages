import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: test(),
    );
  }
}

// ignore: camel_case_types
class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

// ignore: camel_case_types
class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/Image (1).png'),
        Center(
          child: Container(
              width: 500,
              alignment: Alignment.center,
              child: const Text(
                " Your order has been ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Color(0xFF1C1B1B)),
              )),
        ),
        Container(
            width: 500,
            alignment: Alignment.center,
            child: const Text("placed successfully",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Color(0xFF1C1B1B)))),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.only(bottom: 5),
                  alignment: Alignment.center,
                  child: const Text(
                    "Thank you For Choosing us! Feel Free To Continue ",
                    style: TextStyle(
                        color: Color(0Xff6F7384),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )),
              Container(
                  padding: EdgeInsets.only(bottom: 5),
                  alignment: Alignment.center,
                  child: const Text(
                    "Shopping and explore our wide range of Products. ",
                    style: TextStyle(
                        color: Color(0Xff6F7384),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )),
              Container(
                  padding: EdgeInsets.only(bottom: 5),
                  alignment: Alignment.center,
                  child: const Text(
                    "Happy shopping! ",
                    style: TextStyle(
                        color: Color(0Xff6F7384),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Container(
            width: 261.5384,
            height: 55.5,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.all(15),
                    backgroundColor: Color(0Xff354249)),
                child: const Text(
                  "Continue Shopping",
                  style: TextStyle(
                      color: Color.fromARGB(255, 250, 243, 243),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ))),
      ],
    ));
  }
}
