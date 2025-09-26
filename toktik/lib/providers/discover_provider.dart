import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool isLoading = true;
  List<VideoPost> videoPosts = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(milliseconds: 300));

    isLoading = false;
    notifyListeners();
  }
}
