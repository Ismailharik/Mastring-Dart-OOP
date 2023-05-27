import 'package:dart_app/models/Point.model.dart';

void main() {
  Point p1 = const Point(x: 1.0, y: 2.0);
  Point p2 = const Point(x: 1.0, y: 2.0);

  Point p3 = const Point(x: 0.0, y: 0.0);

  print("Is P1 & P2 pointing on the same object : " +
      identical(p1, p2).toString());
  print("Is P1 & P3 pointing on the same object : " +
      identical(p1, p3).toString());

  /*
    const constructor help us to optimize the allocation of the  memory space:
      - when he find constructors having the same attributes he allocate one 
        object and let them pointing on the same object
      - else , It's new Object
      Note that : it's important to make your attributes final
    if
  
  */
}
