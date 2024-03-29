import 'package:get/get.dart';

import '../data/repository/pupular_product_repo.dart';
import '../model/prodcut_model.dart';

class PopularProductConrtoaller extends GetxController {
  final PupularProductRepo popularProductRepo;
  PopularProductConrtoaller({required this.popularProductRepo});

  List<ProductsResspoModel> _pupularProductList = [];
  List<ProductsResspoModel> get pupularProductList => _pupularProductList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getPupularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print('get products');
      _pupularProductList = [];
      _pupularProductList
          .addAll(ProductRespo.fromJson(response.body).products!);
      _isLoaded = true;
      update();
    } else {}
  }
}
