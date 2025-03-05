import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/model/photo.dart';
import 'package:image_search/ui/home_view_model.dart';

void main() {
  test('Stream의 잘 동작하는지 확인', () async {
    final viewModel = HomeViewModel(FakePhotoApiRepository());

    await viewModel.fetch('apple');

    final result = fakeJson
        .map(
          (e) => Photo.fromJson(e),
        )
        .toList();

    expect(viewModel.photos, result);
  });
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<List<Photo>> fetch(String query) async {
    Future.delayed(const Duration(milliseconds: 500));

    return fakeJson.map((e) => Photo.fromJson(e)).toList();
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "id": 4384750,
    "pageURL":
        "https://pixabay.com/photos/flower-yellow-flower-plant-macro-4384750/",
    "type": "photo",
    "tags":
        "flower, nature, beautiful flowers, yellow flower, plant, flower wallpaper, macro, blossom, bloom, close up, flower, yellow flower, yellow flower, flower background, yellow flower, yellow flower, yellow flower, macro",
    "previewURL":
        "https://cdn.pixabay.com/photo/2019/08/04/20/48/flower-4384750_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/g382a5e9f2c47ca68e92d688fe60926b2e0edc174398bcc86cf469e203665b90f6c8c379c69e7d6cb5c3af61b255e007b9a328cc9ee1c819ad06f6ace128c6aff_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 427,
    "largeImageURL":
        "https://pixabay.com/get/g9741473b5acae56317bb8a561ec833f411ad7241fd5d8591571e0fa60d7254d2b522e490a9412f048a964119c461c4141aaebb71eb622602e7f8a4c3f2348dd7_1280.jpg",
    "imageWidth": 5286,
    "imageHeight": 3532,
    "imageSize": 1161871,
    "views": 5418,
    "downloads": 3837,
    "collections": 193,
    "likes": 48,
    "comments": 26,
    "user_id": 7520060,
    "user": "DerWeg",
    "userImageURL":
        "https://cdn.pixabay.com/user/2023/07/09/08-27-31-784_250x250.jpg"
  },
  {
    "id": 6353123,
    "pageURL": "https://pixabay.com/photos/poppy-flower-yellow-poppy-6353123/",
    "type": "photo",
    "tags":
        "poppy, flower, yellow poppy, yellow flowers, flower background, petals, blossom, bloom, flora, beautiful flowers, nature, up close, poppy, flower wallpaper, poppy, poppy, poppy, poppy, flower, yellow poppy, yellow flowers, yellow flowers",
    "previewURL":
        "https://cdn.pixabay.com/photo/2021/06/21/09/10/poppy-6353123_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/g07ced2479fa053a2116f12d306004509d132ac406fd4fca574b82eb8850e84bf0c34eb4ee39b44b69e3f50ea777cba0a7cba6eaa6e36645be31b315e15e1fad1_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 427,
    "largeImageURL":
        "https://pixabay.com/get/gf1969fba20103fb25fee7248dd4aed5ad23dec46cfc9b7666cf601fce8ea83fe168b1ddfa2eb93439e756fb9fc23832e2a0a46d7c5ea1e21bc794d5713517602_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 4000,
    "imageSize": 2306701,
    "views": 9240,
    "downloads": 4372,
    "collections": 58,
    "likes": 103,
    "comments": 62,
    "user_id": 10084616,
    "user": "Nennieinszweidrei",
    "userImageURL":
        "https://cdn.pixabay.com/user/2022/12/04/11-13-16-116_250x250.png"
  },
];
