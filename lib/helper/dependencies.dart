import 'package:foodd/controllers/recommended_product_controller.dart';
import 'package:foodd/data/repository/recommended_product_repo.dart';
import 'package:foodd/utils/app_constant.dart';

import '../controllers/pupular_product_controaller.dart';
import '../data/api/api_client.dart';
import '../data/repository/pupular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  /// api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppApi.baseUrl));
  // Get.lazyPut(() => ApiClient(appBaseUrl: 'https://www.dbestech.com'));

  /// repos
  Get.lazyPut(() => PupularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendProductRepo(apiClient: Get.find()));

  /// Controllers
  Get.lazyPut(() => PopularProductConrtoaller(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendProductConrtoaller(recommendProductRepo: Get.find()));
}
