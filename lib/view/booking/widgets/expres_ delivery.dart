import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class delivery<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T?> onChanged;
  final String leading;

  const delivery(
      {required this.value,
        required this.groupValue,
        required this.onChanged,
        required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = value == groupValue;
    return  InkWell(
      highlightColor: Colors.white,
                onTap: () => onChanged(value),
                child: Container(
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.only(right: 15),
                  child:
                      Row(
                        children: [
                          _customRadioButton,
                          Padding(
                            padding:
                            EdgeInsets.only(left: 10, top: 0),
                            child: Text(leading,
                              style: TextStyle(
                                  fontSize: smallFontSize,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Bold',
                                color: isSelected ? Color(0xFFF05A25) : Colors.grey[300]!,
                              ),),
                          ),
                        ],
                      ),
                ),
              );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
        height: 15,
        width: 15,
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
            size: 12,
          ),
        ));
  }
}