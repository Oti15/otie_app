import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class MyRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T?> onChanged;
  final int cleanerNum;
  final String price;

  const MyRadioListTile(
      {required this.value,
      required this.groupValue,
      required this.onChanged,
      required this.cleanerNum,
      required this.price});

  @override
  Widget build(BuildContext context) {
    final isSelected = value == groupValue;
    return Center(
      child: Container(
          margin: const EdgeInsets.only(left: 0, top: 15),
          height: 80,
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: isSelected ? Color(0xFFF05A25) : Colors.grey[300]!),
          ),
          child: Padding(
              padding: EdgeInsets.only(right: 8,left: 8, top: 0),
              child: InkWell(
                highlightColor: Colors.white,
                onTap: () => onChanged(value),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.only(right: 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 0),
                            child: Text(
                              "${cleanerNum} ${tr("cleaner")}",
                              style: TextStyle(
                                fontSize: largeTitleFontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Bold',
                                color: isSelected ? Colors.black : Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 0),
                            child: Text(
                              "${"from".tr()}   ${price} IQD",
                              style: TextStyle(
                                  fontSize: largeTitleFontSize,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Bold',
                                  color:
                                      isSelected ? Colors.black : Colors.grey),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      _customRadioButton,
                    ],
                  ),
                ),
              ))),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
        height: 22,
        width: 22,
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFF05A25) : null,
          borderRadius: BorderRadius.circular(13.5),
          border: Border.all(
            color: isSelected ? Color(0xFFF05A25) : Colors.grey[300]!,
          ),
        ),
        child: const Center(
          child: Icon(
            Icons.done,
            color: Colors.white,
            size: iconSize3,
          ),
        ));
  }
}
