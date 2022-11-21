import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:otie_app/utils/constants.dart';
import 'package:otie_app/view/widgets/my_buttom.dart';
import 'package:otie_app/view/widgets/my_simple_app_bar.dart';

import '../../data/booking_data.dart';
import 'widgets/Pickup_delivery.dart';
import 'widgets/expres_ delivery.dart';
import 'widgets/show_time.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

// define object of data single date in list date use it in fun in line 425
class objectDay {
  late int day;
  late String name;
}

class _BookingState extends State<Booking> {
  String choose = 'Morning';
  String selectedValue = 'Pickup';
  String Delivery = 'Regular Delivery';
  // use it to get list of 7 days after today in line 97 from fun in line 425
  var arrayDays = list7days();
  // define selected day
  int selectedDay = DateTime.now().day;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MySimpleAppBar(title: tr('booking')),
      backgroundColor: primaryBgColor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
         Padding(
          padding: const EdgeInsets.only(left: 20,right: 20, top: 0),
          child: Text(
            "select_date_time".tr(),
            style: const TextStyle(
                fontSize: xLargeTitleFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bold',
                color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioList(
              EX: true,
              show: true,
              leading: 'pickup'.tr(),
              value: 'Pickup',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = "$value";
                  print("${value}");
                });
              },
              height: 105,
              radius: 15,
              width: 175,
              border: 1,
            ),
            const SizedBox(
              width: 20,
            ),
            RadioList(
              EX: false,
              show: true,
              leading: 'delivery'.tr(),
              value: 'Delivery',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = "$value";
                  print("${value}");
                });
              },
              height: 105,
              radius: 15,
              width: 175,
              border: 1,
            ),
          ],
        ),
        // pickup date
        Padding(
          padding: EdgeInsets.only(left: 20,right: 20, top: 20),
          child: Text(
            "pickup_date".tr(),
            style: const TextStyle(
                fontSize: primaryFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bold',
                color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 15,
        ),

        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: arrayDays
                .map((date) => (selectedDay == date.day
                    ? listDate(true, date?.day, date?.name)
                    : listDate(false, date?.day, date?.name)))
                .toList(),
          ),
        ),
        const SizedBox(
          height: 0,
        ),

        Padding(
          padding: EdgeInsets.only(left: 20,right: 20, top: 20),
          child: Text(
            "pickup_time".tr(),
            style: const TextStyle(
                fontSize: primaryFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bold',
                color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: RadioList(
                  EX: false,
                  show: false,
                  leading: 'morning'.tr(),
                  value: 'Morning',
                  groupValue: choose,
                  onChanged: (value) {
                    setState(() {
                      choose = "$value";
                      print("${value}");
                    });
                  },
                  height: 70,
                  radius: 15,
                  width: 100,
                  border: 0),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: RadioList(
                  EX: false,
                  show: false,
                  leading: 'afternoon'.tr(),
                  value: 'Afternoon',
                  groupValue: choose,
                  onChanged: (value) {
                    setState(() {
                      choose = "$value";
                      print("${value}");
                    });
                  },
                  height: 70,
                  radius: 15,
                  width: 120,
                  border: 0),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: RadioList(
                EX: false,
                show: false,
                leading: 'evening'.tr(),
                value: 'Evening',
                groupValue: choose,
                onChanged: (value) {
                  setState(() {
                    choose = "$value";
                    print("${value}");
                  });
                },
                height: 70,
                radius: 15,
                width: 100,
                border: 0,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        if (choose == 'Morning')
          const ShowTime(time: 'morning',)
        else if (choose == 'Afternoon')
          const ShowTime(time: 'afternoon',)
        else if (choose == 'Evening')
        const ShowTime(time: 'evening',),
        const SizedBox(
          height: 50,
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                delivery(
                  value: 'Regular Delivery',
                  leading: 'regular_delivery'.tr(),
                  groupValue: Delivery,
                  onChanged: (value) {
                    setState(() {
                      Delivery = "$value";
                      print("${value}");
                    });
                  },
                ),
                delivery(
                  value: 'Express Delivery',
                  leading: 'express_delivery'.tr(),
                  groupValue: Delivery,
                  onChanged: (value) {
                    setState(() {
                      Delivery = "$value";
                      print("${value}");
                    });
                  },
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: MyButtom(
              text: 'next'.tr(),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ()),
                // );
              },
              color: primaryColor,
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ]),
    );
  }

  GestureDetector listDate(bool active, int day, String name) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedDay = day;
            print(day);
          });
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          decoration: BoxDecoration(
              color: active ? Color(0xffF05A25) : null,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: active ? Colors.white : Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: smallFontSize),
              ),
              SizedBox(
                height: 8,
              ),
              Text("${day}",
                  style: TextStyle(
                      color: active ? Colors.white : Colors.black,
                      fontSize: titleFontSize))
            ],
          ),
        ));
  }
}

List list7days() {
  DateTime date1 = DateTime.now();
  var arrayDate = [];
  for (int i = 0; i < 7; i++) {
    DateTime newDate = i == 0 ? date1 : date1.add(Duration(days: i));
    switch (newDate.weekday) {
      case DateTime.saturday as int:
        {
          var dayDetails = new objectDay();
          dayDetails.day = newDate.day;
          dayDetails.name = "Sa";
          arrayDate.add(dayDetails);
        }
        break;
      case DateTime.sunday as int:
        {
          var dayDetails = new objectDay();
          dayDetails.day = newDate.day;
          dayDetails.name = "Su";
          arrayDate.add(dayDetails);
        }
        break;
      case DateTime.monday as int:
        {
          var dayDetails = new objectDay();
          dayDetails.day = newDate.day;
          dayDetails.name = "Mo";
          arrayDate.add(dayDetails);
        }
        break;
      case DateTime.tuesday as int:
        {
          var dayDetails = new objectDay();
          dayDetails.day = newDate.day;
          dayDetails.name = "Tu";
          arrayDate.add(dayDetails);
        }
        break;
      case DateTime.wednesday as int:
        {
          var dayDetails = new objectDay();
          dayDetails.day = newDate.day;
          dayDetails.name = "We";
          arrayDate.add(dayDetails);
        }
        break;
      case DateTime.thursday as int:
        {
          var dayDetails = new objectDay();
          dayDetails.day = newDate.day;
          dayDetails.name = "Th";
          arrayDate.add(dayDetails);
        }
        break;
      case DateTime.friday as int:
        {
          var dayDetails = new objectDay();
          dayDetails.day = newDate.day;
          dayDetails.name = "Fr";
          arrayDate.add(dayDetails);
        }
        break;
      default:
        {
          var dayDetails = new objectDay();
          dayDetails.day = newDate.day;
          dayDetails.name = "Fr";
          arrayDate.add(dayDetails);
        }
        break;
    }
  }
  return arrayDate;
}
