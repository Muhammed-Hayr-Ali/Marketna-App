import 'package:get/get.dart';
import 'package:marketna_app/shared/audio_player/audio_player.dart';
import 'package:marketna_app/shared/converter/rating_converter.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/product_details/domain/entities/comments.dart';
import 'package:marketna_app/src/product_details/domain/entities/images.dart';
import 'package:marketna_app/src/product_details/domain/entities/product_details_model.dart';
import 'package:marketna_app/src/product_details/domain/entities/rating.dart';
import 'package:marketna_app/src/product_details/domain/use_cases/use_cases.dart';

class ProductDetailsControler extends GetxController {
  final useCases = Get.find<UseCasesImpl>();
  RxBool isLoading = false.obs;
  Rx<ProductDetailsModel> product = ProductDetailsModel.empty().obs;
  RxList favoriteList = [].obs;
  RxList<Images> images = <Images>[].obs;
  RxMap ratingDetails = {}.obs;
  RxString rating = ''.obs;
  RxList<Comments> comments = <Comments>[].obs;

  Future<void> getProductDetails({required int id}) async {
    isLoading(true);
    ApiResult apiResult = await useCases.getProductDetails(id: id);
    apiResult.when(
        success: (status, message, data, v) {
          product.value = ProductDetailsModel.fromJson(data);
        },
        failure: (
          status,
          message,
        ) {});
    isLoading(false);
  }

  Future<void> getDetailsImages({required int id}) async {
    ApiResult apiResult = await useCases.getDetails(id: id, type: 'images');
    apiResult.when(
        success: (status, message, data, v) {
          images.value = imagesListFromJson(data);
        },
        failure: (
          status,
          message,
        ) {});
  }

  Future<void> getDetailsRating({required int id}) async {
    ApiResult apiResult = await useCases.getDetails(id: id, type: 'rating');
    apiResult.when(
        success: (status, message, data, v) {
          List<Rating> value = ratingListFromJson(data);
          rating.value = RatingConverter.ratingToString(value);
        },
        failure: (
          status,
          message,
        ) {});
  }

  Future<void> getDetailscomment({required int id}) async {
    ApiResult apiResult = await useCases.getDetails(id: id, type: 'comment');
    apiResult.when(
        success: (status, message, data, v) {
          comments.value = commentsListFromJson(data);
        },
        failure: (
          status,
          message,
        ) {});
  }

  Future<void> saveFavorite({required List favorite}) async {
    return await useCases.saveFavorite(favorite: favorite);
  }

  Future<void> deleteFavorite() async {
    return await useCases.deleteFavorite();
  }

  Future<List> getFavorite() async {
    final data = await useCases.getFavorite();
    return favoriteList.value = data;
  }

  @override
  void onInit() {
    super.onInit();
    getFavorite();
  }

  Future<void> addToFavorite({required int id}) async {
    favoriteList.add(id);
    AudioPlayer.like();
    return await saveFavorite(favorite: favoriteList);
  }

  Future<void> removeFromFavorite({required int id}) async {
    favoriteList.remove(id);
    return await saveFavorite(favorite: favoriteList);
  }
}
