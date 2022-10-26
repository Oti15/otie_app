import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/catogary.dart';
import 'widgets/services.dart';
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final controller = PageController();
  @override
  void dispose(){
    controller.dispose();

    super.dispose();
  }
  bool isLastPage = false;
  List<String> names = [
    "Bronze",
    "Silever",
    "Gold"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          actions: [
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Icons.notifications_none_outlined,
                    size: 40,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    //Navegate to notification page
                  },
                );
              },
            ),
            SizedBox(
              width: 5,
            ),
          ],
          leading:
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.account_circle_outlined,
                  size: 40,
                  color: Colors.black,
                ),
                onPressed: () {
                  //Navegate to profile page
                },
              );
            },
          ),
          title:
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("OTIE  أوتي",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bold',
                  color: Colors.black
                ),),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                  EdgeInsets.only(left: 20, top: 10),
                  child: Text("OTIE Promo’s",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Bold',
                        color: Colors.black
                    ),),
                ),
                SizedBox(
                  height: 5,
                ),
                Stack(
                  children: [
                    Container(
                      height: 200,
                      child: PageView(
                        onPageChanged: (index)=>{
                          setState(()=>isLastPage = index==2)
                        },
                        controller: controller,
                        scrollDirection: Axis.vertical,
                        children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              width: MediaQuery.of(context).size.width-40,
                              height: 190,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.orange,
                              ),

                            ),
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              width: MediaQuery.of(context).size.width-40,
                              height: 190,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.orange,
                              ),

                            ),
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              width: MediaQuery.of(context).size.width-40,
                              height: 190,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.orange,
                              ),

                            ),
                          ),

                        ],
                      ),

                    ),
                    Positioned(
                      left: 30,
                      bottom: 65,
                      child: SmoothPageIndicator(
                        axisDirection: Axis.vertical,
                        controller: controller,
                        count: 3,
                        effect: WormEffect(
                            dotColor: Color(0xFFF05A25),
                            activeDotColor: Colors.white
                        ),
                        onDotClicked: (index) => controller.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding:
                  EdgeInsets.only(left: 20,),
                  child: Text("Select servies",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Bold',
                        color: Colors.black
                    ),),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        catogary(
                          x: false,
                          name: 'Home \nCleaning',
                          image: 'images/cat1.PNG',

                        ),
                        SizedBox(width: 10,),
                        catogary(
                         x: false,
                          name :'Laundry',
                          image:'images/cat2.PNG',
                        )
                      ],
                    ),
                    catogary(
                     x: true,
                      name: 'Washing and cleaning',
                      image: 'images/cat3.PNG',
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding:
                  EdgeInsets.only(left: 25,),
                  child: Text("Home cleaning services",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Bold',
                        color: Colors.black
                    ),),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: names.length,
                    itemBuilder: (BuildContext context, int index){
                      return services(
                        name: names[index]
                      );
                    }
                  ),
                ),
                SizedBox(
                  height: 25,
                ),


              ],

            ),
          ],
        )




    );
  }

}
