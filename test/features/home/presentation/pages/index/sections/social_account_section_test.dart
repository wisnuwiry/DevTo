import 'package:dev_to/core/core.dart';
import 'package:dev_to/features/home/presentation/pages/index/sections/sections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../../helpers/helpers.dart';

void main() {
  testWidgets('Check Icons Menu Items', (tester) async {
    // arrange
    await tester.pumpApp(Scaffold(body: SocialAccountSection()));

    // assert
    expect(find.byType(IconButton), findsNWidgets(5));
  });

  testWidgets('Check IconData in item menu', (tester) async {
    // arrange
    await tester.pumpApp(Scaffold(body: SocialAccountSection()));

    // assert
    expect(find.byIcon(AppIcons.twitter), findsOneWidget);
    expect(find.byIcon(AppIcons.facebook), findsOneWidget);
    expect(find.byIcon(AppIcons.github), findsOneWidget);
    expect(find.byIcon(AppIcons.instagram), findsOneWidget);
    expect(find.byIcon(AppIcons.twitch), findsOneWidget);
  });
}
