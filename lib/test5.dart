import 'package:dart_oop/models/geometric.design.model.dart';

void main() {
  GeometricDesign geometricDesign = GeometricDesign.fromFile("design1.json");
  geometricDesign.show();
}
