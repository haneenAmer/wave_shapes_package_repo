<!--
Developer:Haneen Amer , Zeena Ibrahem
Github:https://github.com/haneenAmer/wave_shapes_package_repo
Github : https://github.com/Zeena0-0
-->

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

![Both-Sides Waves](https://cdn.discordapp.com/attachments/1166330871389884477/1194717935558725713/IMG_20240110_220200_451.png?ex=65b15ec8&is=659ee9c8&hm=e464b300fe952a54b1448b213f71fc5739ced03c26c1454da697fefd18262e6e&)

![Top-Side Waves](https://cdn.discordapp.com/attachments/1166330871389884477/1194717936137547806/IMG_20240110_220201_194.png?ex=65b15ec8&is=659ee9c8&hm=30111feaf51f1635d3d9a85200a3b90636370ac4326d5a1da029c6f21bc027b5&)


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