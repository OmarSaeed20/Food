import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodd/controllers/recommended_product_controller.dart';
import 'package:foodd/view/routes/route_helper.dart';
import 'package:foodd/view/screens/home/main_food_page.dart';
import 'package:get/get.dart';
import 'components/size_config.dart';
import 'helper/dependencies.dart' as dep;
import 'utils/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO: Api
    // Get.find<PupularProductConrtoaller>().getPupularProductList();
    // Get.find<RecommendProductConrtoaller>().getRecommendedProduct();
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: !true,
      theme: ThemeData(
        primaryColor: mainColor,
      ),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
      // home: Builder(
      //   builder: (context) {
      //     SizeConfig().init(context);
      //     return const MainFoodPage();
      //   },
      // ),
    );
  }
}
