import 'package:flutter/material.dart';

class Device {
  Device({
    required this.screenSize,
    required this.pixelRatio,
    required this.name,
  });

  final Size screenSize;
  final double pixelRatio;
  final String name;
}

class DevicesData {
  static final List<Device> iphoneData = [
    Device(
      name: 'Iphone 8 Plus',
      screenSize: const Size(414, 736),
      pixelRatio: 2.608,
    ),
    Device(
      name: 'iPhone 7',
      screenSize: const Size(375, 667),
      pixelRatio: 2.0,
    ),
    Device(
      name: 'Iphone 11',
      screenSize: const Size(414.0, 896.0),
      pixelRatio: 2.0,
    ),
    Device(
      name: 'Iphone SE',
      screenSize: const Size(320.0, 568.0),
      pixelRatio: 2.0,
    ),
    Device(
      name: 'Iphone 11 Pro',
      screenSize: const Size(375.0, 812.0),
      pixelRatio: 2.0,
    ),
  ];

  static final List<Device> ipadData = [
    Device(
      name: 'iPad',
      screenSize: const Size(768.0, 1024.0),
      pixelRatio: 2.0,
    ),
    Device(
      name: 'iPad Air 2',
      screenSize: const Size(768, 1024),
      pixelRatio: 2.0,
    ),
  ];

  static final List<Device> macData = [
    Device(
      name: 'iPad Pro 12"',
      screenSize: const Size(1024.0, 1366.0),
      pixelRatio: 2.0,
    ),
    Device(
      screenSize: const Size(1422.0, 822.0),
      pixelRatio: 2.0,
      name: 'Macbook 13.3"',
    ),
    Device(
      screenSize: const Size(2536.0, 2096.0),
      pixelRatio: 2.0,
      name: 'Imac Pro',
    ),
  ];

  static final List<Device> androidData = [
    Device(
      screenSize: const Size(320.0, 569.0),
      pixelRatio: 2.0,
      name: 'Small Android Phone',
    ),
    Device(
      screenSize: const Size(411.0, 731.0),
      pixelRatio: 2.0,
      name: 'Medium Android Phone',
    ),
    Device(
      screenSize: const Size(360.0, 800.0),
      pixelRatio: 2.0,
      name: 'Samsung S 20',
    ),
  ];

  static final List tabletAndroidData = [
    Device(
      screenSize: const Size(800.0, 1280.0),
      pixelRatio: 2.0,
      name: 'Large Android Phone',
    ),
    Device(
      screenSize: const Size(768.0, 1024.0),
      pixelRatio: 2.0,
      name: 'Nexus 9',
    ),
  ];
}
