import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sections/sections.dart';

class TabletView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSection(
        context: context,
        isMobileView: false,
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 240,
                ),
                child: Column(
                  children: [
                    const SideMenuSection(),
                    SocialAccountSection(),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Center(
                  child: Container(
                    height: 10000,
                    color: Colors.amber,
                    child: const Center(
                      child: Text('Body'),
                    ),
                  ),
                ),
                flex: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
