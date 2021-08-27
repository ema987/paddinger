import 'package:paddinger/src/paddinger_generator.dart';
import 'package:test/test.dart';

void main() {
  test(
      'GIVEN a valid paddingName and a valid constantName, WHEN generatePaddingWidgetsAndEdgeInsets(), THEN valid padding widgets and EdgeInsets are generated',
      () {
    expect(
        PaddingerGenerator()
            .generatePaddingWidgetsAndEdgeInsets("Normal", "PADDING_NORMAL"),
        '''
// **************************************************************************
// START Normal
// **************************************************************************

// **************************************************************************
// START Normal EdgeInsets
// **************************************************************************

const NORMAL_ALL_PADDING = EdgeInsets.all(PADDING_NORMAL);

const NORMAL_LEFT_PADDING = EdgeInsets.only(left: PADDING_NORMAL);
const NORMAL_TOP_PADDING = EdgeInsets.only(top: PADDING_NORMAL);
const NORMAL_RIGHT_PADDING = EdgeInsets.only(right: PADDING_NORMAL);
const NORMAL_BOTTOM_PADDING = EdgeInsets.only(bottom: PADDING_NORMAL);

const NORMAL_HORIZONTAL_PADDING = EdgeInsets.symmetric(horizontal: PADDING_NORMAL);
const NORMAL_VERTICAL_PADDING = EdgeInsets.symmetric(vertical: PADDING_NORMAL);

const NORMAL_LEFT_TOP_PADDING = const EdgeInsets.only(left: PADDING_NORMAL, top: PADDING_NORMAL);
const NORMAL_LEFT_BOTTOM_PADDING = const EdgeInsets.only(left: PADDING_NORMAL, bottom: PADDING_NORMAL);
const NORMAL_RIGHT_TOP_PADDING = const EdgeInsets.only(right: PADDING_NORMAL, top: PADDING_NORMAL);
const NORMAL_RIGHT_BOTTOM_PADDING = const EdgeInsets.only(right: PADDING_NORMAL, bottom: PADDING_NORMAL);

// **************************************************************************
// END Normal EdgeInsets
// **************************************************************************


// **************************************************************************
// START Normal Widgets
// **************************************************************************

class NormalAllPadding extends Padding {
  const NormalAllPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.all(PADDING_NORMAL),
            child: child);
}

class NormalLeftPadding extends Padding {
  const NormalLeftPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.only(left: PADDING_NORMAL),
            child: child);
}
class NormalTopPadding extends Padding {
  const NormalTopPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.only(top: PADDING_NORMAL),
            child: child);
}
class NormalRightPadding extends Padding {
  const NormalRightPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.only(right: PADDING_NORMAL),
            child: child);
}
class NormalBottomPadding extends Padding {
  const NormalBottomPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.only(bottom: PADDING_NORMAL),
            child: child);
}

class NormalHorizontalPadding extends Padding {
  const NormalHorizontalPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.symmetric(horizontal: PADDING_NORMAL),
            child: child);
}
class NormalVerticalPadding extends Padding {
  const NormalVerticalPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.symmetric(vertical: PADDING_NORMAL),
            child: child);
}

class NormalLeftTopPadding extends Padding {
  const NormalLeftTopPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.only(left: PADDING_NORMAL, top: PADDING_NORMAL),
            child: child);
}
class NormalLeftBottomPadding extends Padding {
  const NormalLeftBottomPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.only(left: PADDING_NORMAL, bottom: PADDING_NORMAL),
            child: child);
}
class NormalRightTopPadding extends Padding {
  const NormalRightTopPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.only(right: PADDING_NORMAL, top: PADDING_NORMAL),
            child: child);
}
class NormalRightBottomPadding extends Padding {
  const NormalRightBottomPadding({Key? key, required Widget child})
      : super(
            key: key,
            padding: const EdgeInsets.only(right: PADDING_NORMAL, bottom: PADDING_NORMAL),
            child: child);
}

// **************************************************************************
// END Normal Widgets
// **************************************************************************


// **************************************************************************
// END Normal
// **************************************************************************

''');
  });
}
