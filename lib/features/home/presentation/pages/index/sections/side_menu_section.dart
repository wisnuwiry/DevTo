import 'package:dev_to/l10n/l10n.dart';
import 'package:flutter/material.dart';

class SideMenuSection extends StatefulWidget {
  const SideMenuSection({Key? key, this.autoCollapse = true}) : super(key: key);

  final bool? autoCollapse;

  @override
  _SideMenuSectionState createState() => _SideMenuSectionState();
}

class _SideMenuSectionState extends State<SideMenuSection> {
  bool _currentCollapse = true;

  @override
  void initState() {
    if (widget.autoCollapse != null) {
      _currentCollapse = widget.autoCollapse!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return InkWell(
              borderRadius: BorderRadius.circular(8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 8.0,
                ),
                child: Text(_mockMenuData[index]),
              ),
              onTap: () {},
            );
          },
          itemCount: _currentCollapse ? 6 : _mockMenuData.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        ),
        if (_currentCollapse) ...[
          InkWell(
            key: const Key('action_expand_more_side_menu'),
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 8.0,
              ),
              child: Text('• • •  '
                  '${AppLocalizations.of(context)!.more}..'),
            ),
            onTap: () {
              setState(() {
                _currentCollapse = false;
              });
            },
          )
        ]
      ],
    );
  }
}

List<String> _mockMenuData = [
  '🏠 Home',
  '📚 Reading List',
  '📃 Listings',
  '🎙️ Podcast',
  '🎥 Videos',
  '🏷️ Tags',
  '👍 Code Of Product',
  '💡 FAQ',
  '🛍️ Dev Shop',
  '❤️ Sponsors',
  '😃 About',
  '🤓 Privacy Policy',
  '👀 Term Of Use',
  '🤙 Contact',
];
