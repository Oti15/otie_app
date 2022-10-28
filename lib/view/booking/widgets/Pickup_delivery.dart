import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class RadioList<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String leading;
  final Widget? title;
  final ValueChanged<T?> onChanged;
  final double height;
  final double width;
  final double radius;
  final double border;

  const RadioList({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.leading,
    this.title,
    required this.height,
    required this.width,
    required this.radius,
    required this.border
  });

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Row(
          children: [
            _customRadioButton,
            SizedBox(width: 0),
            if (title != null) title,
          ],
        ),
      ),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFFF05A25) : null,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: isSelected ? Color(0xFFF05A25) : Colors.grey[300]!,
          width: border,
        ),
      ),
      child: Center(
        child: Text(
          leading,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}