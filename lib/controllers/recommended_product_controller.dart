 import 'package:get/get.dart';

import '../data/repository/pupular_product_repo.dart';
import '../model/prodcut_model.dart';

class RecommendProductConrtoaller extends GetxController {
  final PupularProductRepo popularProductRepo;
  RecommendProductConrtoaller({required this.popularProductRepo});

  List<dynamic> _recommendProduct = [];
  List<dynamic> get pupularProduct => _recommendProduct;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProduct() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print('get products');
      _recommendProduct = [];
      _recommendProduct
          .addAll(ProductRespo.fromJson(response.body).products!);
      _isLoaded = true;
      update();
    } else {}
  }
}
