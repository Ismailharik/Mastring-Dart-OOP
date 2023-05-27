import 'dart:math';

class Point {
  final double x;
  final double y;

  // Point({required this.x, required this.y});
  const Point({required this.x, required this.y}); // for main2

  // there is a problem with this constructor , it can be
  //caused by the new version doesn't support this
  Point.fromArray(List<double> data)
      : x = data[0],
        y = data[1];

  double distanceTo(Point p) {
    double W = x - p.x;
    double H = y - p.y;
    return sqrt(W * W + H * H);
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Point( x: $x , y: $y: )';
  }

  Map<String, dynamic> toJson() {
    return {'x': x, 'y': y};
  }

  Point.fromJson(Map<String, dynamic> map)
      : x = (map['x'] as int).toDouble(),
        y = (map['y'] as int).toDouble();
}
