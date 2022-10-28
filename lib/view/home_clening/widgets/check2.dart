import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class check2<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T?> onChanged;
  final int hours;

  const check2(
      {required this.value,
        required this.groupValue,
        required this.onChanged,
        required this.hours,});

  @override
  Widget build(BuildContext context) {
    final isSelected = value == groupValue;
    return Center(
      child: Container(
          margin: EdgeInsets.only(left: 0, top: 15),
          height: 60,
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color:isSelected ? Color(0xFFF05A25) : Colors.grey[300]!),
          ),
          child: Padding(
              padding: EdgeInsets.only(right: 0, top: 0),
              child: InkWell(
                onTap: () => onChanged(value),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                              "${hours} Hour",
                              style: TextStyle(
                                  fontSize: largeTitleFontSize,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Bold',
                                  color: isSelected ? Colors.black : Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
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
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFF05A25) : null,
          borderRadius: BorderRadius.circular(13.5),
          border: Border.all(
            color: isSelected ? Color(0xFFF05A25) : Colors.grey[300]!,
          ),
        ),
        child: Center(
          child: Icon(
            Icons.done,
            color: Colors.white,
            size: iconSize3,
          ),
        ));
  }
}
