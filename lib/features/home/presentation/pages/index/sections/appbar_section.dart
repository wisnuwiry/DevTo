import 'package:dev_to/core/core.dart';
import 'package:dev_to/l10n/l10n.dart';
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
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 30),
      child: Image.asset(
        Assets.imgLogo,
        color: Theme.of(context).appBarTheme.actionsIconTheme?.color,
        key: const Key('img_logo_appbar'),
      ),
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
            key: const Key('img_logo_appbar'),
          ),
        ),
        const SizedBox(width: 16),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 38,
            maxWidth: context.layout.maxWidth - 200,
          ),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(AppIcons.search),
              hintText: AppLocalizations.of(context)?.search,
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
          key: const Key('button_action_appbar_search_icon'),
          padding: const EdgeInsets.all(8),
          icon: const Icon(AppIcons.search),
          tooltip: AppLocalizations.of(context)?.search,
          onPressed: () {},
        ),
      ),
      _buildCommonActions(context),
    ];
  }

  static List<Widget> _buildActionsTabletOrDesktop(BuildContext context) {
    return [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ElevatedButton(
          key: const Key('button_action_appbar_write_post'),
          onPressed: () {},
          child: Text(AppLocalizations.of(context)!.writePost),
        ),
      ),
      const SizedBox(width: 8),
      _buildCommonActions(context),
    ];
  }

  static Widget _buildCommonActions(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 40,
          child: IconButton(
              key: const Key('button_action_appbar_connect'),
              padding: const EdgeInsets.all(8),
              icon: const Icon(AppIcons.connect),
              onPressed: () {}),
        ),
        SizedBox(
          width: 40,
          child: IconButton(
              key: const Key('button_action_appbar_notification'),
              padding: const EdgeInsets.all(8),
              icon: const Icon(AppIcons.notification),
              onPressed: () {}),
        ),
        IconButton(
          key: const Key('button_action_appbar_avatar'),
          onPressed: () {},
          icon: CircleAvatar(
            radius: 16,
            backgroundColor: Theme.of(context).disabledColor,
            backgroundImage: const NetworkImage(
                'https://avatars.githubusercontent.com/u/44025097?s=60&v=4'),
          ),
        ),
      ],
    );
  }

  final BuildContext context;
  final bool isMobileView;
}
