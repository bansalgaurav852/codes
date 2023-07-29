import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              for (int i = 0; i < 8; i++)
                if (i % 2 == 0) row(white, black) else row(black, white)
            ],
          ),
        ),
      ),
    );
  }

  Widget row(one, two) => Row(children: [
        for (int j = 8; j > 0; j--)
          if (j % 2 == 0) one else two
      ]);

  Widget get black => Container(color: Colors.black, height: 30, width: 30);
  Widget get white => Container(color: Colors.white, height: 30, width: 30);
}
