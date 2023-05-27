import 'dart:convert';

import 'models/Point.model.dart';

void main() {
  Point p1 = Point(x: 10, y: 30);
  print(p1.toString()); // Call toString() explicitly
  Point p2 = Point(x: 10, y: 20);
  print(p2);
  print(p1.distanceTo(p2));
  print(p1.toJson());
  print(json.encode(p1.toJson()));
  JsonEncoder jsonEncoder = JsonEncoder.withIndent("   ");
  print(jsonEncoder.convert(p1));

  Point p3 = Point.fromJson({'x': 10, 'y': 20});
  Map<String, dynamic> map = Map();
  map['x'] = 45;
  map['y'] = 35;
  Point p4 = Point.fromJson(map);
  print(p4);

  Point p5 = Point.fromArray([20, 30]);
  print(p5);
}
