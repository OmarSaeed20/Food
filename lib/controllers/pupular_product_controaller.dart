import 'package:get/get.dart';

import '../data/repository/pupular_product_repo.dart';

class PupularProductConrtoaller extends GetxController {
  final PupularProductRepo pupularProductRepo;

  PupularProductConrtoaller({required this.pupularProductRepo});
  List<dynamic> _pupularProductList = [];
  List<dynamic> get pupularProductList => _pupularProductList;

  Future<void> getPupularProductList() async {
    Response response = await pupularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _pupularProductList = [];
      // _pupularProductList.addAll();
      update();
    } else {}
  }
}
