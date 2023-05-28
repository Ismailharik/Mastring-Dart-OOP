import 'shape.model.dart';

class Rectangle extends Shape {
  Rectangle({required super.p1, required super.p2});

  double getWidth() {
    return (p2.x - p1.x).abs().toDouble();
  }

  double getHeight() {
    return (p2.y - p1.y).abs().toDouble();
  }

  @override
  double getArea() {
    return getWidth() * getHeight();
  }

  @override
  double getPerimeter() {
    return 2 * (getHeight() + getWidth());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": "Rectangle",
      "x": p1.x,
      "y": p1.y,
      "width": getWidth(),
      "height": getHeight()
    };
  }
}
