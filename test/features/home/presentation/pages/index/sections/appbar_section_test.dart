import 'package:dev_to/features/home/presentation/pages/index/sections/appbar_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../../../../../../helpers/helpers.dart';

void main() {
  testWidgets('AppBar in mobile device', (tester) async {
    await mockNetworkImages(() async {
      await tester.pumpApp(const _MockPage(isMobileView: true));
    });

    // Assert

    // Check Image Logo
    expect(find.byType(Image), findsOneWidget);

    // Check component only in desktop/tablet mode
    expect(find.byType(TextFormField), findsNothing);
  });

  testWidgets('AppBar in tablet/desktop device', (tester) async {
    await mockNetworkImages(() async {
      await tester.pumpApp(const _MockPage(isMobileView: false));
    });

    // Assert
    // Check Image Logo
    expect(find.byKey(const Key('img_logo_appbar')), findsOneWidget);
    expect(find.byType(TextFormField), findsOneWidget);
  });

  testWidgets('AppBar actions In Mobile', (tester) async {
    await mockNetworkImages(() async {
      await tester.pumpApp(const _MockPage(isMobileView: true));
    });

    // Assert
    expect(find.byType(IconButton), findsNWidgets(4));
  });

  testWidgets('AppBar actions In Tablet/Desktop', (tester) async {
    await mockNetworkImages(() async {
      await tester.pumpApp(const _MockPage(isMobileView: false));
    });

    // Assert
    expect(find.byType(IconButton), findsNWidgets(3));
  });

  testWidgets('Action tap Search Icon in Mobile View', (tester) async {
    await mockNetworkImages(() async {
      await tester.pumpApp(const _MockPage(isMobileView: true));
    });

    await tester.tap(find.byKey(const Key('button_action_appbar_search_icon')));
  });

  testWidgets('Action tap Write Post in Dekstop/Tablet View', (tester) async {
    await mockNetworkImages(() async {
      await tester.pumpApp(const _MockPage(isMobileView: false));
    });

    await tester.tap(find.byKey(const Key('button_action_appbar_write_post')));
  });

  testWidgets('Action tap Connect Icon Button', (tester) async {
    await mockNetworkImages(() async {
      await tester.pumpApp(const _MockPage(isMobileView: false));
    });

    await tester.tap(find.byKey(const Key('button_action_appbar_connect')));
  });

  testWidgets('Action tap Notification Icon Button', (tester) async {
    await mockNetworkImages(() async {
      await tester.pumpApp(const _MockPage(isMobileView: false));
    });

    await tester
        .tap(find.byKey(const Key('button_action_appbar_notification')));
  });

  testWidgets('Action tap Avatar Button', (tester) async {
    await mockNetworkImages(() async {
      await tester.pumpApp(const _MockPage(isMobileView: false));
    });

    await tester.tap(find.byKey(const Key('button_action_appbar_avatar')));
  });
}

class _MockPage extends StatelessWidget {
  const _MockPage({Key? key, this.isMobileView = true}) : super(key: key);

  final bool isMobileView;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSection(
        context: context,
        isMobileView: isMobileView,
      ),
    );
  }
}
