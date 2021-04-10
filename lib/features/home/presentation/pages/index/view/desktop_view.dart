import 'package:flutter/material.dart';

import '../sections/sections.dart';

class DesktopView extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 200,
                  ),
                  child: Column(
                    children: [
                      const SideMenuSection(),
                      SocialAccountSection(),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 650,
                    minWidth: 650,
                  ),
                  child: Card(
                    child: Image.network(
                      'https://i.ibb.co/8sCCJKd/flutter-download-config-firebase.webp',
                      width: 650,
                      height: 1000,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 250,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    color: Colors.pink,
                    child: const Center(child: Text('SideBar')),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
