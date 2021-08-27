import 'package:paddinger/src/missing_padding_combination_key.dart';
import 'package:paddinger/src/missing_padding_combination_key_extensions.dart';
import 'package:paddinger/src/template_generator.dart';

class EdgeInsetsTemplateGenerator extends TemplateGenerator {
  @override
  String getGeneratorType() {
    return "EdgeInsets";
  }

  @override
  String addAll(String paddingName, String constantName) {
    return '''
const ${paddingName.toUpperCase()}_ALL_PADDING = EdgeInsets.all($constantName);
''';
  }

  @override
  String generateOnly(
      String paddingName, String paddingKey, String constantName) {
    return '''
const ${paddingName.toUpperCase()}_${paddingKey.toUpperCase()}_PADDING = EdgeInsets.only(${paddingKey.toLowerCase()}: $constantName);
''';
  }

  @override
  String addSymmetric(String paddingName, String constantName) {
    return '''
const ${paddingName.toUpperCase()}_HORIZONTAL_PADDING = EdgeInsets.symmetric(horizontal: $constantName);
const ${paddingName.toUpperCase()}_VERTICAL_PADDING = EdgeInsets.symmetric(vertical: $constantName);
''';
  }

  @override
  String generateMissingCombination(String paddingName,
      MissingPaddingCombinationKey paddingKey, String constantName) {
    return '''
const ${paddingName.toUpperCase()}_${paddingKey.horizontalAsUpperCase}_${paddingKey.verticalAsUpperCase}_PADDING = const EdgeInsets.only(${paddingKey.horizontalAsCamelCase}: $constantName, ${paddingKey.verticalAsCamelCase}: $constantName);
''';
  }
}
