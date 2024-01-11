
## Contributors
- Haneen Amer : https://github.com/haneenAmer
- Zeena Ibrahem : https://github.com/Zeena0-0



# Wave Painter

A Dart package for easily creating customizable wave shapes using custom painters.

## Overview

This Dart package provides a set of classes for creating different types of wave shapes using Flutter's
custom painting capabilities. The package is designed to simplify the process of generating wave
patterns, making it easy for developers to integrate dynamic and visually appealing waves into their
Flutter applications.

## Features

### Top-Side Waves

- **CosWaveTopSide**: Creates top-side waves with customizable parameters like amplitude, frequency, and phase. 
- **CosWaveTopSide2**: An extended version with additional customization options.
- **CosWaveTopSide3**: Further enhanced version with more customizable features.

### Both-Sides Waves

- **CosWaveBothSides**: Creates waves on both sides with customizable parameters. 
- **CosWaveBothSides2**: An extended version with additional customization options. 
- **CosWaveBothSides3**: Further enhanced version with more customizable features. 

![Both-Sides Waves](https://cdn.discordapp.com/attachments/1166330871389884477/1194724209239281914/IMG_20240110_222704_660.png?ex=65b164a0&is=659eefa0&hm=f9f186bbdb96bd1656eca7b2e207f26654e99bf06e5ee7b068af435d741d98ec&)

![Top-Side Waves](https://cdn.discordapp.com/attachments/1166330871389884477/1194724208941469858/IMG_20240110_222707_001.png?ex=65b164a0&is=659eefa0&hm=a4a843a457189261819a7fea44d7f5f42613bd6caf657e7f82dbf0415c2a9edf&)


## Installation
import
```dart
import 'package:wave_shape_package/wave_shape_package.dart';
```
Add this package to your `pubspec.yaml` file:

```yaml
dependencies:
  wave_shap_painter: ^1.0.0
```


## Usage 
```dart
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

```
