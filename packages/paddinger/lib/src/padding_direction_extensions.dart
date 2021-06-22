import 'package:paddinger/src/padding_direction.dart';
import 'package:recase/recase.dart';

extension PaddingDirectionExtensions on PaddingDirection {
  String get asPascalCase {
    return describeEnum().pascalCase;
  }

  String describeEnum() {
    return this.toString().split('.').last;
  }
}
