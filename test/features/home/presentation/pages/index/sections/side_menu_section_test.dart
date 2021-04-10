import 'package:dev_to/features/home/presentation/pages/index/sections/sections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../../helpers/helpers.dart';

void main() {
  testWidgets('Render SideMenuSection', (tester) async {
    await tester.pumpApp(const Scaffold(body: SideMenuSection()));
    expect(find.byType(ListView), findsOneWidget);
  });

  testWidgets('Check Items Menu Before Tan More Menu or Default',
      (tester) async {
    // arrange
    await tester.pumpApp(
      Scaffold(
          body: ListView(
        children: [
          const SideMenuSection(autoCollapse: true),
        ],
      )),
    );

    // actual
    final menus = find.byType(InkWell);

    // assert
    // Default is [6] because more menu is same widget
    expect(menus, findsNWidgets(7));
  });

  testWidgets('Check Items Menu After Tap More Menu', (tester) async {
    // arrange
    await tester.pumpApp(
      Scaffold(
          body: ListView(
        children: [
          const SideMenuSection(autoCollapse: true),
        ],
      )),
    );

    await tester.tap(find.byKey(const Key('action_expand_more_side_menu')));
    await tester.pumpAndSettle();

    // actual
    final widget = find.byType(InkWell);

    // assert
    expect(widget, findsNWidgets(14));
  });
}
