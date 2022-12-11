import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../widgets/insert_photo.dart';

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
  final bool show;
  final bool EX;

  const RadioList(
      {required this.value,
      required this.groupValue,
      required this.onChanged,
      required this.leading,
      this.title,
      required this.height,
      required this.width,
      required this.radius,
      required this.border,
      required this.show,
        required this.EX
      });

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    return InkWell(
      highlightColor: Colors.white,
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
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFFF05A25) : null,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: isSelected ? Color(0xFFF05A25) : Colors.grey[300]!,
          width: border,
        ),
      ),
      child:
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (show == true)
                ? InsertPhoto(
                    height: height*0.35,
                    width: width*0.35,
                    assetImage: 'assets/icons/delivery_icon.png')
                : SizedBox(
                    width: 0,
                  ),
            (show == true)
                ? Text(
              leading,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: largeTitleFontSize,
              ),
            )
                : Text(
              leading,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: titleFontSize,
              ),
            ),
          ],
        ),
      )

    );
  }
}
