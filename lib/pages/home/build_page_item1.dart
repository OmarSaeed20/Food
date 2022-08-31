import 'package:flutter/material.dart';
import 'build_page_item2.dart';

import '../../widgets/dimensions.dart';

class PageViewItem1 extends StatelessWidget {
  const PageViewItem1({
    Key? key,
    required this.position,
    required this.currentPageValue,
  }) : super(key: key);
  final int position;
  final double currentPageValue;
  final double scaleFactor = 0.8;

  /// الجانب اليمين و الجانب اليسار  الذين سوف يظهروا بجانب الصفحة التي انا موجود فيها وانا محدد 0.8 من الصفحة السابقة وبالمثل من الصفحة التالية scaleFactor اقصد بال

  @override
  Widget build(BuildContext context) {
    double height = Dimensions.pageViewContainer;
    Matrix4 matrix = Matrix4.identity();

    /// Matrix => عبارة عن مصفوفة
    /// لانشاء اشياء اكثر روعة مثل المنظور الثلاثي الابعاد Matrix4 تعمل هذه المصفوفة علي اجراء عمليات التحويل مثل الترجمة و القياس و التدوير و يمكننا استخدام
    if (position == currentPageValue.floor()) {
      /// floor => يساعدنا في ذلك floor عندما نتحرك يمينا و يسارا يتم تغيير قيمة الصفحة الحالية بالارقام عشرية ولكننا نريد هذه الارقام صحيحة و
      /// position == currentPageValue.floor() => يشير الي الصفحة الحالية التي موجود فيها
      double currentScale =
          1 - (currentPageValue - position) * (1 - scaleFactor);
      double currentTrans = height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);

      /// currentScale => مقياس المنحني عندما ننتقل يمينا و يسارا
    } else if (position == currentPageValue.floor() + 1) {
      /// position == currentPageValue.floor()+1 => يشير الي الصفحة التالية التي سوف اذهب اليها
      double currentScale =
          scaleFactor + (currentPageValue - position + 1) * (1 - scaleFactor);
      double currentTrans = height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else if (position == currentPageValue.floor() - 1) {
      // position == currentPageValue.floor() - 1 => تشير الي الصفحة السابقة
      double currentScale =
          1 - (currentPageValue - position) * (1 - scaleFactor);
      double currentTrans = height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else {
      double currentScale = scaleFactor;
      double currentTrans = height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          /// Image Container
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                right: Dimensions.width10, left: Dimensions.width10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              image: const DecorationImage(
                image: AssetImage("assets/images/images 5.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xFFe8e8e8),
                      blurRadius: Dimensions.radius5,
                      offset: const Offset(2, 5)),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              child: const BuildPageItem2(),
            ),
          ),
        ],
      ),
    );
  }
}
