import 'package:dev_to/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('IconData Object Filled And Outline Compare',
      (WidgetTester tester) async {
    expect(AppIcons.bookmark, isNot(equals(AppIcons.bookmarkFilled)));
    expect(AppIcons.like, isNot(equals(AppIcons.likeFilled)));
    expect(AppIcons.unicorn, isNot(equals(AppIcons.unicornFilled)));
  });

  testWidgets('Icons specify the AppIcons font', (WidgetTester tester) async {
    expect(AppIcons.close.fontFamily, 'AppIcons');
    expect(AppIcons.search.fontFamily, 'AppIcons');
  });

  testWidgets('Check Avability FontsIcons', (tester) async {
    expect(AppIcons.author, isNotNull);
    expect(AppIcons.bookmark, isNotNull);
    expect(AppIcons.bookmarkFilled, isNotNull);
    expect(AppIcons.close, isNotNull);
    expect(AppIcons.comment, isNotNull);
    expect(AppIcons.connect, isNotNull);
    expect(AppIcons.facebook, isNotNull);
    expect(AppIcons.github, isNotNull);
    expect(AppIcons.instagram, isNotNull);
    expect(AppIcons.like, isNotNull);
    expect(AppIcons.likeFilled, isNotNull);
    expect(AppIcons.moreHorizontal, isNotNull);
    expect(AppIcons.notification, isNotNull);
    expect(AppIcons.search, isNotNull);
    expect(AppIcons.settings, isNotNull);
    expect(AppIcons.twitch, isNotNull);
    expect(AppIcons.twitter, isNotNull);
    expect(AppIcons.unicorn, isNotNull);
    expect(AppIcons.unicornFilled, isNotNull);
  });
}
