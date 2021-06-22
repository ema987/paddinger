import 'package:paddinger/src/missing_padding_combination_key.dart';
import 'package:paddinger/src/missing_padding_combination_key_extensions.dart';
import 'package:paddinger/src/template_generator.dart';

class PaddingWidgetsGenerator extends TemplateGenerator {
  @override
  String getGeneratorType() {
    return "Widgets";
  }

  @override
  String addAll(String paddingName, String constantName) {
    return '''
class ${paddingName}AllPadding extends Padding {
    const ${paddingName}AllPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.all($constantName),
            child: child);
}
  ''';
  }

  @override
  String generateOnly(
      String paddingName, String paddingKey, String constantName) {
    return '''
class $paddingName${paddingKey}Padding extends Padding {
    const $paddingName${paddingKey}Padding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.only(${paddingKey.toLowerCase()}: $constantName),
            child: child);
}
  ''';
  }

  @override
  String addSymmetric(String paddingName, String constantName) {
    return '''
class ${paddingName}HorizontalPadding extends Padding {
    const ${paddingName}HorizontalPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.symmetric(horizontal: $constantName),
            child: child);
}

class ${paddingName}VerticalPadding extends Padding {
  const ${paddingName}VerticalPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.symmetric(vertical: $constantName),
            child: child);
}
''';
  }

  @override
  String generateMissingCombination(String paddingName,
      MissingPaddingCombinationKey paddingKey, String constantName) {
    return '''
class $paddingName${paddingKey.horizontalAsPascalCase}${paddingKey.verticalAsPascalCase}Padding extends Padding {
    const $paddingName${paddingKey.horizontalAsPascalCase}${paddingKey.verticalAsPascalCase}Padding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.only(${paddingKey.horizontalAsCamelCase}: $constantName, ${paddingKey.verticalAsCamelCase}: $constantName),
            child: child);
}
  ''';
  }
}
