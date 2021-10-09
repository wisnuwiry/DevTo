import 'package:dev_to/features/home/home.dart';
import 'package:dev_to/features/home/presentation/pages/index/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  group('Render View By Device Size', () {
    /// More info about screen size in IOS device:
    /// https://developer.apple.com/library/archive/documentation/DeviceInformation/Reference/iOSDeviceCompatibility/Displays/Displays.html
    group('IOS Mobile Devices', () {
      for (var item in DevicesData.iphoneData) {
        _testInDevice(
          'Mobile View In ${item.name}',
          device: item,
          viewType: MobileView,
        );
      }
    });

    group('IOS IPad Devices', () {
      for (var item in DevicesData.ipadData) {
        _testInDevice(
          'Tablet View In ${item.name}',
          device: item,
          viewType: TabletView,
        );
      }
    });

    group('Mac Devices', () {
      for (var item in DevicesData.macData) {
        _testInDevice(
          'Desktop View In ${item.name}',
          device: item,
          viewType: DesktopView,
        );
      }
    });

    group('Android Devices', () {
      for (var item in DevicesData.androidData) {
        _testInDevice(
          'Mobile View In ${item.name}',
          device: item,
          viewType: MobileView,
        );
      }
    });

    group('Android Tablet Devices', () {
      for (var item in DevicesData.tabletAndroidData) {
        _testInDevice(
          'Tablet View In ${item.name}',
          device: item,
          viewType: TabletView,
        );
      }
    });
  });
}

void _testInDevice(String title,
    {required Device device, required Type viewType}) {
  testWidgets(title, (tester) async {
    await tester.binding.setSurfaceSize(device.screenSize);
    tester.binding.window.devicePixelRatioTestValue = device.pixelRatio;

    await mockNetworkImages(() async {
      await tester.pumpApp(const HomePage());
    });
    expect(find.byType(viewType), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);

    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    addTearDown(tester.binding.window.clearDevicePixelRatioTestValue);
  });
}
