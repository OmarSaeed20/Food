import 'package:get/get.dart';

import '../api/api_client.dart';

class PupularProductRepo extends GetxService {
  final ApiClient apiClient;
  PupularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData('https://www.dbestech.com/api/product/list');
  }
}
