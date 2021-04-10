import 'package:dev_to/features/home/presentation/pages/index/sections/sections.dart';
import 'package:dev_to/features/home/presentation/pages/index/view/view.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../../../../../../helpers/helpers.dart';

void main() {
  testWidgets('Render Tablet View', (tester) async {
    // Arrange
    await mockNetworkImages(() async {
      await tester.pumpApp(TabletView());
    });

    // Actual

    // Assert
    expect(find.byType(AppBarSection), findsOneWidget);
  });
}
