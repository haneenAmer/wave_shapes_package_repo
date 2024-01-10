<!--
Developer:Haneen Amer , Zeena Ibrahem
Github:https://github.com/haneenAmer/wave_shapes_package_repo
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

- **CosWaveTopSide**: Creates top-side waves with customizable parameters like amplitude, frequency, and phase. ![Example Image 1](add_image_link1_here)
- **CosWaveTopSide2**: An extended version with additional customization options. ![Example Image 2](add_image_link2_here)
- **CosWaveTopSide3**: Further enhanced version with more customizable features. ![Example Image 3](add_image_link3_here)

### Both-Sides Waves

- **CosWaveBothSides**: Creates waves on both sides with customizable parameters. 
- **CosWaveBothSides2**: An extended version with additional customization options. 
- **CosWaveBothSides3**: Further enhanced version with more customizable features. 

![Both-Sides Waves](https://cdn.discordapp.com/attachments/1166330871389884477/1194601552657260554/Group_1.png?ex=65b0f264&is=659e7d64&hm=da949ddbe2e3d329a9a62261545ccace887c6ecf6a6315ab4cc1154b99f7708a&)

![Top-Side Waves](https://cdn.discordapp.com/attachments/1166330871389884477/1194601777572622417/Group_2.png?ex=65b0f29a&is=659e7d9a&hm=38d596763dee4d24f46e63f62d1d2280904c3dd536d88747918599f1ae98628b&)


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