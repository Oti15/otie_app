import 'package:flutter/cupertino.dart';
import 'package:otie_app/view/home_page/page_view/single_item_page_view.dart';

class PagesToView extends StatefulWidget {
  late final  bool isLastPage ;
   var controller;
  int itemCount;
  PagesToView({Key? key,required this.itemCount, required this.isLastPage,required this.controller}) : super(key: key);

  @override
  State<PagesToView> createState() => _PagesToViewState();
}

class _PagesToViewState extends State<PagesToView> {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 200,
      child: PageView.builder(
        onPageChanged: (index) => {setState(() => widget.isLastPage = index == 2)},
        controller:widget.controller,
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return SingleItemPageView();
        },
      ),
    );
  }
}
