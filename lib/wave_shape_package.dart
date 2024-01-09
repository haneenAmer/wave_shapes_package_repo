library wave_shape_package;

import 'dart:math';

import 'package:flutter/material.dart';
// top

class CosWaveTopSide extends CustomPainter {
  final Color waveColor;

  CosWaveTopSide({ this.waveColor=Colors.blue});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = waveColor; // Change color as needed

    final Path path = Path();

    path.lineTo(0, size.height);

    for (double i = 0; i <= size.width; i++) {
      final double x = i;

      final double amplitude =
          size.height / 5; // Adjust the amplitude for smaller or larger waves
      const double frequency =
      1; // Adjust the frequency for more or fewer waves
      const double phase = 301.6; // Adjust the phase for left or right shift
      final double centerY = size.height / 20; // Vertical position adjustment
      final double y =
          amplitude * cos((frequency * x / size.width * 2 * pi) - phase) +
              centerY;

      path.lineTo(x, y);
    }

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


class CosWaveTopSide2 extends CustomPainter {
  final Color waveColor2;

  CosWaveTopSide2({ this.waveColor2=Colors.blue});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = waveColor2; // Change color as needed

    final Path path = Path();

    path.lineTo(0, size.height);

    for (double i = 0; i <= size.width; i++) {
      final double x = i;

      final double amplitude =
          size.height / 15; // Adjust the amplitude for smaller or larger waves
      const double frequency =
      2; // Adjust the frequency for more or fewer waves
      const double phase = 310.6; // Adjust the phase for left or right shift
      final double centerY = size.height / 20; // Vertical position adjustment
      final double y =
          amplitude * cos((frequency * x / size.width * 2 * pi) - phase) +
              centerY;

      path.lineTo(x, y);
    }

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
class CosWaveTopSide3 extends CustomPainter {
  final Color waveColor3;

  CosWaveTopSide3({ this.waveColor3=Colors.blue});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = waveColor3; // Change color as needed

    final Path path = Path();

    path.lineTo(0, size.height);

    for (double i = 0; i <= size.width; i++) {
      final double x = i;

      final double amplitude =
          size.height / 20; // Adjust the amplitude for smaller or larger waves
      const double frequency =
      4; // Adjust the frequency for more or fewer waves
      const double phase = 310.6; // Adjust the phase for left or right shift
      final double centerY = size.height / 20; // Vertical position adjustment
      final double y =
          amplitude * cos((frequency * x / size.width * 2 * pi) - phase) +
              centerY;

      path.lineTo(x, y);
    }

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
// both-side

class CosWaveBothSides extends CustomPainter {
  final Color waveColor;

  CosWaveBothSides({this.waveColor = Colors.blue});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = waveColor; // Change color as needed

    final Path path = Path();

    // Starting point at the bottom-left corner
    path.moveTo(0, size.height);

    // Top side wave
    for (double i = 0; i <= size.width; i++) {
      final double x = i;

      final double amplitude =
          size.height / 5; // Adjust the amplitude for smaller or larger waves
      const double frequency =
      1; // Adjust the frequency for more or fewer waves
      const double phase = 301.6; // Adjust the phase for left or right shift
      final double centerY = size.height / 20; // Vertical position adjustment
      final double y =
          amplitude * cos((frequency * x / size.width * 2 * pi) - phase) +
              centerY;

      path.lineTo(x, y);
    }

    // Bottom side wave
    for (double i = size.width; i >= 0; i--) {
      final double x = i;

      final double amplitude =
          size.height / 5; // Adjust the amplitude for smaller or larger waves
      const double frequency =
      1; // Adjust the frequency for more or fewer waves
      const double phase = 301.6; // Adjust the phase for left or right shift
      final double centerY = size.height / 20; // Vertical position adjustment
      final double y =
          amplitude * cos((frequency * x / size.width * 2 * pi) - phase) +
              centerY;

      path.lineTo(
          x, size.height - y); // Invert the y-coordinate for the bottom side
    }

    // Complete the path by connecting the last point to the bottom-left corner
    path.lineTo(0, size.height);

    // Draw the path with the specified color
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CosWaveBothSides2 extends CustomPainter {
  final Color waveColor2;

  CosWaveBothSides2({this.waveColor2 = Colors.blue});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = waveColor2; // Change color as needed

    final Path path = Path();

    path.lineTo(0, size.height);

    for (double i = 0; i <= size.width; i++) {
      final double x = i;

      final double amplitude =
          size.height / 15; // Adjust the amplitude for smaller or larger waves
      const double frequency =
      2; // Adjust the frequency for more or fewer waves
      const double phase = 310.6; // Adjust the phase for left or right shift
      final double centerY = size.height / 20; // Vertical position adjustment
      final double y =
          amplitude * cos((frequency * x / size.width * 2 * pi) - phase) +
              centerY;

      path.lineTo(x, y);
    }

// bottom side
    for (double i = size.width; i >= 0; i--) {
      final double x = i;

      final double amplitude =
          size.height / 15; // Adjust the amplitude for smaller or larger waves
      const double frequency =
      2; // Adjust the frequency for more or fewer waves
      const double phase = 310.6; // Adjust the phase for left or right shift
      final double centerY = size.height / 20; // Vertical position adjustment
      final double y =
          amplitude * cos((frequency * x / size.width * 2 * pi) - phase) +
              centerY;

      path.lineTo(
          x, size.height - y); // Invert the y-coordinate for the bottom side
    }

    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CosWaveBothSides3 extends CustomPainter {
  final Color waveColor3;

  CosWaveBothSides3({this.waveColor3 = Colors.blue});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = waveColor3; // Change color as needed

    final Path path = Path();

    path.lineTo(0, size.height);

    for (double i = 0; i <= size.width; i++) {
      final double x = i;

      final double amplitude =
          size.height / 20; // Adjust the amplitude for smaller or larger waves
      const double frequency =
      4; // Adjust the frequency for more or fewer waves
      const double phase = 310.6; // Adjust the phase for left or right shift
      final double centerY = size.height / 20; // Vertical position adjustment
      final double y =
          amplitude * cos((frequency * x / size.width * 2 * pi) - phase) +
              centerY;

      path.lineTo(x, y);
    }
// bottom side
    for (double i = size.width; i >= 0; i--) {
      final double x = i;

      final double amplitude =
          size.height / 20; // Adjust the amplitude for smaller or larger waves
      const double frequency =
      4; // Adjust the frequency for more or fewer waves
      const double phase = 310.6; // Adjust the phase for left or right shift
      final double centerY = size.height / 20; // Vertical position adjustment
      final double y =
          amplitude * cos((frequency * x / size.width * 2 * pi) - phase) +
              centerY;

      path.lineTo(
          x, size.height - y); // Invert the y-coordinate for the bottom side
    }

    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

