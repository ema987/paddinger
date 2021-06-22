import 'package:paddinger/src/missing_padding_combination_key.dart';
import 'package:paddinger/src/padding_direction_extensions.dart';
import 'package:recase/recase.dart';

extension MissingPaddingCombinationKeyExtensions
    on MissingPaddingCombinationKey {
  String get horizontalAsPascalCase {
    return horizontal.describeEnum().pascalCase;
  }

  String get horizontalAsCamelCase {
    return horizontal.describeEnum().camelCase;
  }

  String get horizontalAsUpperCase {
    return horizontal.describeEnum().toUpperCase();
  }

  String get verticalAsPascalCase {
    return vertical.describeEnum().pascalCase;
  }

  String get verticalAsCamelCase {
    return vertical.describeEnum().camelCase;
  }

  String get verticalAsUpperCase {
    return vertical.describeEnum().toUpperCase();
  }
}
