import 'package:paddinger/src/edge_insets_template_generator.dart';
import 'package:test/test.dart';

void main() {
  test(
      'GIVEN a valid paddingName and a valid constantName, WHEN generate(), THEN valid EdgeInsets are generated',
      () {
    expect(
        EdgeInsetsTemplateGenerator().generate("Normal", "PADDING_NORMAL"), '''
// **************************************************************************
// START Normal EdgeInsets
// **************************************************************************

const NORMAL_ALL_EDGE_INSETS = EdgeInsets.all(PADDING_NORMAL);

const NORMAL_LEFT_EDGE_INSETS = EdgeInsets.only(left: PADDING_NORMAL);
const NORMAL_TOP_EDGE_INSETS = EdgeInsets.only(top: PADDING_NORMAL);
const NORMAL_RIGHT_EDGE_INSETS = EdgeInsets.only(right: PADDING_NORMAL);
const NORMAL_BOTTOM_EDGE_INSETS = EdgeInsets.only(bottom: PADDING_NORMAL);

const NORMAL_HORIZONTAL_EDGE_INSETS = EdgeInsets.symmetric(horizontal: PADDING_NORMAL);
const NORMAL_VERTICAL_EDGE_INSETS = EdgeInsets.symmetric(vertical: PADDING_NORMAL);

const NORMAL_LEFT_TOP_EDGE_INSETS = const EdgeInsets.only(left: PADDING_NORMAL, top: PADDING_NORMAL);
const NORMAL_LEFT_BOTTOM_EDGE_INSETS = const EdgeInsets.only(left: PADDING_NORMAL, bottom: PADDING_NORMAL);
const NORMAL_RIGHT_TOP_EDGE_INSETS = const EdgeInsets.only(right: PADDING_NORMAL, top: PADDING_NORMAL);
const NORMAL_RIGHT_BOTTOM_EDGE_INSETS = const EdgeInsets.only(right: PADDING_NORMAL, bottom: PADDING_NORMAL);

// **************************************************************************
// END Normal EdgeInsets
// **************************************************************************

''');
  });
}
