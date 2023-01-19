import 'package:get/get.dart';

import '../data/repository/recommended_product_repo.dart';
import '../model/prodcut_model.dart';

class RecommendProductConrtoaller extends GetxController {
  final RecommendProductRepo recommendProductRepo;
  RecommendProductConrtoaller({required this.recommendProductRepo});

  List<ProductsResspoModel> _recommendProduct = [];
  List<ProductsResspoModel> get recommendedProductLi => _recommendProduct;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProduct() async {
    Response response = await recommendProductRepo.getRecommendProductList();
    if (response.statusCode == 200) {
      print('got Recom product');
      _recommendProduct = [];
      _recommendProduct.addAll(ProductRespo.fromJson(response.body).products!);
      _isLoaded = true;
      update();
    } else {
      print('could not get Recom product');

    }
  }
}
