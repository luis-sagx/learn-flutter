import 'package:flutter/material.dart';
import 'package:toktik/config/numbers_format.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: video.likes,
          icon: Icons.favorite,
          color: Colors.red,
        ),
        const SizedBox(height: 20),
        _CustomIconButton(
          value: video.views,
          icon: Icons.remove_red_eye_outlined,
          color: Colors.white,
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData icon;
  final Color color;
  const _CustomIconButton(
      {required this.value, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: null,
          icon: Icon(icon, color: color),
        ),
        if (value > 0)
          Text(
            NumbersFormat.formatNumber(value.toDouble()),
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
      ],
    );
  }
}
