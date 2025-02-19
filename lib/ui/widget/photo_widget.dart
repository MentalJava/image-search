import 'package:flutter/material.dart';
import 'package:image_search/model/photo_model.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({
    super.key,
    required this.photoModel,
  });

  final PhotoModel photoModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            photoModel.previewURL,
          ),
        ),
      ),
    );
  }
}
