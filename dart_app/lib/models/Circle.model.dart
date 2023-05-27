import 'dart:math';

import 'package:dart_app/models/Shape.model.dart';

class Circle extends Shape {
  Circle({required super.p1, required super.p2});

  double getRadius() {
    return p1.distanceTo(p2);
  }

  @override
  double getArea() {
    double radius = p1.distanceTo(p2);
    return radius;
  }

  @override
  double getPerimeter() {
    double r = getRadius();
    return 2 * pi * r * r;
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': 'Circle',
      'center': p1.toJson(),
      'radius': getRadius().toStringAsFixed(2)
    };
  }
}
