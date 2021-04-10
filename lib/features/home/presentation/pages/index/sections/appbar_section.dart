import 'package:dev_to/core/core.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

class AppBarSection extends AppBar {
  AppBarSection({
    required this.context,
    this.isMobileView = true,
  }) : super(
          centerTitle: false,
          leadingWidth: 40,
          titleSpacing: isMobileView ? 0 : NavigationToolbar.kMiddleSpacing,
          title: isMobileView
              ? _buildTitleMobile(context)
              : _buildTitleTabletOrDesktop(context),
          actions: isMobileView
              ? _buildActionsMobile(context)
              : _buildActionsTabletOrDesktop(context),
        );

  static Widget _buildTitleMobile(BuildContext context) {
    return Image.asset(
      Assets.imgLogo,
      color: Theme.of(context).appBarTheme.actionsIconTheme?.color,
      height: 40,
      key: const Key('img_logo_appbar'),
    );
  }

  static Widget _buildTitleTabletOrDesktop(BuildContext context) {
    return Row(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 30),
          child: Image.asset(
            Assets.imgLogo,
            color: Theme.of(context).appBarTheme.actionsIconTheme?.color,
          ),
        ),
        const SizedBox(width: 16),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 38,
            maxWidth: context.layout.maxWidth - 200,
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(AppIcons.search),
              hintText: 'Search',
            ),
          ),
        ),
      ],
    );
  }

  static List<Widget> _buildActionsMobile(BuildContext context) {
    return [
      SizedBox(
        width: 40,
        child: IconButton(
          padding: const EdgeInsets.all(8),
          icon: const Icon(AppIcons.search),
          onPressed: () {},
        ),
      ),
      SizedBox(
        width: 40,
        child: IconButton(
            padding: const EdgeInsets.all(8),
            icon: const Icon(AppIcons.connect),
            onPressed: () {}),
      ),
      SizedBox(
        width: 40,
        child: IconButton(
            padding: const EdgeInsets.all(8),
            icon: const Icon(AppIcons.notification),
            onPressed: () {}),
      ),
      IconButton(
        onPressed: () {},
        icon: CircleAvatar(
          radius: 16,
          backgroundColor: Theme.of(context).disabledColor,
          backgroundImage: const NetworkImage(
              'https://avatars.githubusercontent.com/u/44025097?s=60&v=4'),
        ),
      ),
    ];
  }

  static List<Widget> _buildActionsTabletOrDesktop(BuildContext context) {
    return [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Write Post'),
        ),
      ),
      const SizedBox(width: 8),
      IconButton(icon: const Icon(AppIcons.connect), onPressed: () {}),
      IconButton(icon: const Icon(AppIcons.notification), onPressed: () {}),
      IconButton(
        onPressed: () {},
        icon: CircleAvatar(
          radius: 16,
          backgroundColor: Theme.of(context).disabledColor,
          backgroundImage: const NetworkImage(
              'https://avatars.githubusercontent.com/u/44025097?s=60'),
        ),
      ),
    ];
  }

  final BuildContext context;
  final bool isMobileView;
}
