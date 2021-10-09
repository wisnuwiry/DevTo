import 'package:auto_route/auto_route.dart';
import 'package:dev_to/app/app_router.gr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AppRouter router;

  setUp(() {
    router = AppRouter();
  });

  group('Testing AppRouter', () {
    test('Validation pagesMap not empty route', () {
      expect(router.pagesMap.isNotEmpty, true);
    });

    test('Validation routes in AppRoutes not empty', () {
      expect(router.routes.isNotEmpty, true);
    });

    group('Validation Specific Route', () {
      test('HomeRoute', () {
        // arrange
        final homePage = router.pagesMap[HomeRoute.name];

        // actual
        var isAvailablePage = homePage != null;
        var isAvailableRoute = router.routes.singleWhere(
          (element) => element.path == const HomeRoute().path,
        );

        // assert
        expect(isAvailablePage, true);
        expect(isAvailableRoute, isA<RouteConfig>());
      });
    });
  });
}
