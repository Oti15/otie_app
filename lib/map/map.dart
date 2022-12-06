// import 'dart:collection';
//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'constanc.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// class MyPage extends StatefulWidget {
//   final List<LatLng> list;
//   const MyPage({Key? key, required this.list}) : super(key: key);
//
//   @override
//   _MyPageState createState() => _MyPageState();
// }
//
// class _MyPageState extends State<MyPage> {
//   late var x;
//   late var y;
//   var myMarkers = HashSet<Marker>();//collection
//   late BitmapDescriptor customMarker;//attribute
//   List<Polyline> myPolyline = [];
//
//
//   getCustomMarker() async{
//     customMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, "assets/images/car-icon2.png");
//   }
//
//   void initState(){
//     super.initState();
//     getCustomMarker();
//
//
//
//     creatPolyLine();
//
//   }
//   creatPolyLine(){
//     myPolyline.add(Polyline(polylineId: PolylineId('1'),
//       color: Colors.red,
//       width: 3,
//       points: widget.list
//
//
//       patterns: [PatternItem.dash(10),PatternItem.gap(10)],
//     ),);
//   }
//   DatabaseReference ref = FirebaseDatabase.instance.reference();
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("The map"),backgroundColor:primaryColor,),
//       body: Center(
//         child: GoogleMap(
//           initialCameraPosition: CameraPosition(
//             target: LatLng(33.3924734, 44.4876016),
//             zoom: 15,
//           ),
//           onMapCreated: (GoogleMapController googleMapController){
//             setState(() {
//               myMarkers.add(Marker(markerId: MarkerId('1'),
//                 position: LatLng(33.3924734, 44.4876016),
//                 icon: customMarker,
//               ),
//               );
//             }
//             );
//           },
//           markers:myMarkers ,
//           polylines: myPolyline.toSet(),
//         ),
//       ),
//     );
//   }
// }