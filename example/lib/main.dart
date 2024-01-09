import 'package:flutter/material.dart';
import 'package:wave_shape_package/wave_shape_package.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,


      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 188, 212, 223),
          title: const Text(
            'Wave Package Example',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 188, 212, 223),
        body: ListView(
            padding: const EdgeInsets.only(top:40,bottom: 40),
            children: <Widget>[
             CustomPaint(
             painter: CosWaveTopSide(
               waveColor: const Color.fromARGB(255, 149, 100, 186),
        ),
               child: const SizedBox(
          width: double.infinity,
          height: 180,
        ),
      ),

         const SizedBox(
        height: 40,
      ),
         CustomPaint(
        painter: CosWaveTopSide2(
          waveColor2: const Color.fromARGB(255, 216, 88, 171),
        ),
        child: const SizedBox(
          width: double.infinity,
          height: 200,
        ),
      ),
         const SizedBox(
        height: 40,
       ),
          CustomPaint(
        painter: CosWaveTopSide3(
          waveColor3: const Color.fromARGB(255, 113, 154, 226),
        ),
             child: const SizedBox(
          width: double.infinity,
          height: 200,
        ),
      ),

      ///both sides
              const SizedBox(
                height: 40,
              ),
           CustomPaint(
        painter: CosWaveBothSides(
          waveColor: const Color.fromARGB(255, 149, 100, 186),
        ),
        child: const SizedBox(
          width: double.infinity,
          height: 180,
        ),
      ),
          const SizedBox(
        height: 40,
      ),
      CustomPaint(
        painter: CosWaveBothSides2(
          waveColor2: const Color.fromARGB(255, 216, 88, 171),
        ),
        child: const SizedBox(
          width: double.infinity,
          height: 200,
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      CustomPaint(
        painter: CosWaveBothSides3(
          waveColor3: const Color.fromARGB(255, 113, 154, 226),
        ),
        child: const SizedBox(
          width: double.infinity,
          height: 200,
        ),
      ),
    ]));
  }
}
