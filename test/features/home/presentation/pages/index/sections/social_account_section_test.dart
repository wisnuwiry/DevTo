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

  testWidgets('Tap Item Menu Twitter', (tester) async {
    // arrange
    await tester.pumpApp(Scaffold(body: SocialAccountSection()));

    await tester.tap(find.byKey(const Key('button_social_media_twitter')));
    await tester.pumpAndSettle();
  });

  testWidgets('Tap Item Menu Facebook', (tester) async {
    // arrange
    await tester.pumpApp(Scaffold(body: SocialAccountSection()));

    await tester.tap(find.byKey(const Key('button_social_media_facebook')));
    await tester.pumpAndSettle();
  });

  testWidgets('Tap Item Menu Github', (tester) async {
    // arrange
    await tester.pumpApp(Scaffold(body: SocialAccountSection()));

    await tester.tap(find.byKey(const Key('button_social_media_github')));
    await tester.pumpAndSettle();
  });

  testWidgets('Tap Item Menu Instagram', (tester) async {
    // arrange
    await tester.pumpApp(Scaffold(body: SocialAccountSection()));

    await tester.tap(find.byKey(const Key('button_social_media_instagram')));
    await tester.pumpAndSettle();
  });

  testWidgets('Tap Item Menu Twitch', (tester) async {
    // arrange
    await tester.pumpApp(Scaffold(body: SocialAccountSection()));

    await tester.tap(find.byKey(const Key('button_social_media_twitch')));
    await tester.pumpAndSettle();
  });
}
