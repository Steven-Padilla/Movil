import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentePage = 0;
  List<Map<String, String>> listBoarding = [
    {"titulo": "Cualquier dato :D", "imagen": ""},
    {"titulo": "Titulo 1", "imagen": ""},
    {"titulo": "Titulo 2", "imagen": ""},
    {"titulo": "Titulo 3", "imagen": ""}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Expanded(
          flex: 20,
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: const [
                Text(
                  "Titulo",
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
                Image(
                  image: AssetImage('assets/images/img.jpg'),
                  // width: 300,
                  // height: 200,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Text(
                    "lorem ipsum(30)",
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Expanded(
          flex: 4,
          child: Center(
            child: OutlinedButton(
              onPressed: null,
              child: Text('Button'),
            ),
          ),
        ),
      ]),
    );
  }
}
