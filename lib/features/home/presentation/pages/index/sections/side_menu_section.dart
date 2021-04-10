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
  void didUpdateWidget(covariant SideMenuSection oldWidget) {
    if (oldWidget.autoCollapse != widget.autoCollapse) {
      _currentCollapse = widget.autoCollapse ?? false;
    }
    super.didUpdateWidget(oldWidget);
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
              onHover: (v) {},
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
              child: const Text('• • •  More..'),
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
