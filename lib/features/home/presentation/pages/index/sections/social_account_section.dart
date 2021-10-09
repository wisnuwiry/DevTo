import 'package:dev_to/core/core.dart';
import 'package:flutter/material.dart';

class SocialAccountSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            key: const Key('button_social_media_twitter'),
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: BoxConstraints.tight(const Size(24, 24)),
            icon: const Icon(AppIcons.twitter, size: 24),
          ),
          IconButton(
            key: const Key('button_social_media_facebook'),
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: BoxConstraints.tight(const Size(24, 24)),
            icon: const Icon(AppIcons.facebook, size: 24),
          ),
          IconButton(
            key: const Key('button_social_media_github'),
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: BoxConstraints.tight(const Size(24, 24)),
            icon: const Icon(AppIcons.github, size: 24),
          ),
          IconButton(
            key: const Key('button_social_media_instagram'),
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: BoxConstraints.tight(const Size(24, 24)),
            icon: const Icon(AppIcons.instagram, size: 24),
          ),
          IconButton(
            key: const Key('button_social_media_twitch'),
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: BoxConstraints.tight(const Size(24, 24)),
            icon: const Icon(AppIcons.twitch, size: 24),
          ),
        ],
      ),
    );
  }
}
