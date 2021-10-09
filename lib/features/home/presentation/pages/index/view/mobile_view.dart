import 'package:flutter/material.dart';

import '../sections/sections.dart';

class MobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('scaffold_home_view_key'),
      appBar: AppBarSection(
        context: context,
        isMobileView: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Dev Community',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ],
                ),
              ),
            ),
            const Divider(height: 1),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8.0),
                physics: const BouncingScrollPhysics(),
                children: [const SideMenuSection()],
              ),
            ),
            const Divider(height: 1),
            SafeArea(child: SocialAccountSection()),
          ],
        ),
      ),
      body: const Card(
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
