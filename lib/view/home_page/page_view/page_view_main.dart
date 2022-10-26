import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otie_app/view/home_page/page_view/pages_to_view.dart';
import 'dots_of_page_view.dart';
bool isLastPage = false;
final controller = PageController();

class MyPageView extends StatelessWidget {
  int pageCount;
   MyPageView({
    Key? key,
    required this.pageCount
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PagesToView(itemCount: pageCount, isLastPage: isLastPage, controller: controller,),
        DotsOfPageView(count: pageCount, controller: controller,),
      ],
    );
  }
}


