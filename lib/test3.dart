import 'models/circle.model.dart';
import 'models/point.model.dart';
import 'models/rectangle.model.dart';
import 'models/shape.model.dart';

void main(List<String> args) {
  Shape shape = Circle(
      p1: const Point(
        x: 10,
        y: 20,
      ),
      p2: const Point(
        x: 30,
        y: 60,
      ));

  print(shape.toJson());

  //typeCasting
  print((shape as Circle).getRadius());
  //other way for typecasting
  if (shape is Circle) {
    print(shape.getRadius());
  }

  print("===================================");
  Rectangle rect1 = Rectangle(
    p1: const Point(
      x: 67,
      y: 44,
    ),
    p2: const Point(
      x: 120,
      y: 60,
    ),
  );

  print(rect1.toJson());
  print(rect1.getHeight());
  print(rect1.getWidth());
  print(rect1.getArea());
  print(rect1.getPerimeter());
}
