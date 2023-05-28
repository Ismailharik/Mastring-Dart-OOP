import 'package:dart_oop/models/circle.model.dart';
import 'package:dart_oop/models/geometric.design.model.dart';

import '../models/point.model.dart';
import 'models/rectangle.model.dart';

void main() {
  GeometricDesign geometricDesign = GeometricDesign();
  geometricDesign.add(
      Circle(p1: const Point(x: 1.0, y: 2.0), p2: const Point(x: 3.0, y: 4.0)));
  geometricDesign.add(
      Circle(p1: const Point(x: 1.0, y: 2.0), p2: const Point(x: 3.0, y: 4.0)));
  geometricDesign.add(Rectangle(
      p1: const Point(x: 1.0, y: 2.0), p2: const Point(x: 3.0, y: 4.0)));
  geometricDesign.show();

  print("************************");
  print(geometricDesign.toJson());
  geometricDesign.save("design1.json");
}
