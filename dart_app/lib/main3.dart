import 'package:dart_app/models/Circle.model.dart';
import 'package:dart_app/models/Shape.model.dart';

import 'models/Point.model.dart';

void main() {
  Shape shape = Circle(p1: Point(x: 20, y: 30), p2: Point(x: 5, y: 3));
  print(shape.toJson());

  if (shape is Circle) {
    print(shape.getRadius());
    // while getRadius isn't exist on Shape
    //the dart compiler know that you're inside Circle it's the " casting implicit"
  }
}
