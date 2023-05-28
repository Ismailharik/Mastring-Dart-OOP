import 'package:dart_oop/models/point.model.dart';

void main() {
  Point p1 = const Point(x: 10, y: 20);
  Point p2 = const Point(x: 14, y: 20);

  print(p1.toString());
  print(p2.toString());

  print(identical(p1, p2));
  /*
    It's highly recommanded to use const constructor for memory optimization,
    because If you have two Object with same values the compiler doesn't allocate
    new memory but make all variables point into the same object ,
    in case they are not same he will create new object
  */
}
