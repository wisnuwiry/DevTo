import 'package:dev_to/features/home/presentation/pages/index/sections/sections.dart';
import 'package:dev_to/features/home/presentation/pages/index/view/mobile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../../../../../../helpers/helpers.dart';

void main() {
  testWidgets('Render Mobile View Drawer Closed', (tester) async {
    // Arrange
    await mockNetworkImages(() async {
      await tester.pumpApp(MobileView());
    });

    // Actual

    // Assert
    expect(find.byType(AppBarSection), findsOneWidget);
  });

  testWidgets('Render Movile View Open Drawer', (tester) async {
    // Arrange
    await mockNetworkImages(() async {
      await tester.pumpApp(MobileView());
    });

    // Open Drawer
    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();

    // Assert
    expect(find.byType(Drawer), findsOneWidget);
    expect(find.byType(SideMenuSection), findsOneWidget);
    expect(find.byType(SocialAccountSection), findsOneWidget);
  });
}
