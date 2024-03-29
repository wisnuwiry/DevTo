import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

import 'view/view.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    switch (context.breakpoint) {
      case LayoutBreakpoint.xs:
        return MobileView();
      case LayoutBreakpoint.sm:
        return TabletView();
      default:
        return DesktopView();
    }
  }
}
