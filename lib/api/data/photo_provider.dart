import 'package:flutter/material.dart';
import 'package:image_search/api/data/api.dart';

class PhotoProvider extends InheritedWidget {
  final Api api;

  const PhotoProvider({
    super.key,
    required super.child,
    required this.api,
  });

  static PhotoProvider of(BuildContext context) {
    final PhotoProvider? result =
        context.dependOnInheritedWidgetOfExactType<PhotoProvider>();
    assert(result != null, 'No Api found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(PhotoProvider oldWidget) {
    return oldWidget.api != api;
  }
}
