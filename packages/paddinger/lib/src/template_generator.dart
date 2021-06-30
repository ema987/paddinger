import 'package:paddinger/src/missing_padding_combination_key.dart';
import 'package:paddinger/src/padding_direction.dart';
import 'package:paddinger/src/padding_direction_extensions.dart';

abstract class TemplateGenerator {
  String generate(String paddingName, String constantName) {
    return '''
${_addStartComment(paddingName)}
${addAll(paddingName, constantName)}
${addOnly(paddingName, constantName)}
${addSymmetric(paddingName, constantName)}
${addMissingCombination(paddingName, constantName)}
${_addEndComment(paddingName)}
''';
  }

  String _addStartComment(String paddingName) {
    return '''
// **************************************************************************
// START $paddingName ${getGeneratorType()}
// **************************************************************************
''';
  }

  String _addEndComment(String paddingName) {
    return '''
// **************************************************************************
// END $paddingName ${getGeneratorType()}
// **************************************************************************
''';
  }

  String getGeneratorType();

  String addAll(String paddingName, String constantName);

  String addOnly(String paddingName, String constantName) {
    final onlyPaddingKeys = PaddingDirection.values
        .map((paddingDirection) => paddingDirection.asPascalCase);
    final onlyPaddingWidgets = onlyPaddingKeys
        .map(
            (paddingKey) => generateOnly(paddingName, paddingKey, constantName))
        .toList();
    return onlyPaddingWidgets.join();
  }

  String generateOnly(
      String paddingName, String paddingKey, String constantName);

  String addSymmetric(String paddingName, String constantName);

  String addMissingCombination(String paddingName, String constantName) {
    final missingCombinationPaddingKeys = [
      MissingPaddingCombinationKey(PaddingDirection.LEFT, PaddingDirection.TOP),
      MissingPaddingCombinationKey(
          PaddingDirection.LEFT, PaddingDirection.BOTTOM),
      MissingPaddingCombinationKey(
          PaddingDirection.RIGHT, PaddingDirection.TOP),
      MissingPaddingCombinationKey(
          PaddingDirection.RIGHT, PaddingDirection.BOTTOM),
    ];
    final missingCombinationPaddingWidgets = missingCombinationPaddingKeys
        .map((paddingKey) =>
            generateMissingCombination(paddingName, paddingKey, constantName))
        .toList();
    return missingCombinationPaddingWidgets.join();
  }

  String generateMissingCombination(String paddingName,
      MissingPaddingCombinationKey paddingKey, String constantName);
}
