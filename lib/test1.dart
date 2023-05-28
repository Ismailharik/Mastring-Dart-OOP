import 'dart:convert';

import 'package:dart_oop/models/point.model.dart';

void main() {
  //simple constructor
  Point p1 = Point(x: 10, y: 70);
  print(p1.toString());

  //formArray Constructor
  Point p2 = Point.fromArray([33, 44]);
  print(p2.toString());
  print(p1.distanceTo(p2).toStringAsFixed(2)); //toStringAsFixed to precise ,
  print(p1.toJson());

  // json encoder to display object as json file
  JsonEncoder jsonEncoder = const JsonEncoder.withIndent("  ");
  print(jsonEncoder.convert(p1.toJson()));

  //ways to pass data from argument
  Map<String, dynamic> data = {}; // = Map()
  data['x'] = 34;
  data['y'] = 55;
  Point p3 = Point.fromJson(data);
  Point p4 = Point.fromJson({'x': 66, 'y': 44});
  print(p3.toString());
  print(p4.toString());
}
