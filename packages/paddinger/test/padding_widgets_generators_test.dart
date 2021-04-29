import 'package:paddinger/src/padding_widgets_generators.dart';
import 'package:test/test.dart';

void main() {
  test(
      'GIVEN a valid paddingName and a valid constantName, WHEN generatePaddingWidgets(), THEN valid padding widgets are generated',
      () {
    expect(generatePaddingWidgets("Normal", "PADDING_NORMAL"), '''
  
  // **************************************************************************
// START Normal
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
// END Normal
// **************************************************************************


    ''');
  });
}
