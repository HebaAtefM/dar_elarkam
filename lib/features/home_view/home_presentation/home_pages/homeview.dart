

import 'package:flutter/material.dart';
import 'package:myapp/features/home_view/home_presentation/home_pages/daily%20worship.dart';
import 'package:myapp/features/home_view/home_presentation/home_pages/homeview_body.dart';
import 'package:myapp/features/home_view/home_presentation/home_pages/quraan_view.dart';
import 'package:myapp/features/home_view/home_presentation/home_pages/tasks_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentindex=0;
  List<Widget> screens=[
    HomeViewBody(),
    QuraanView(),
    TasksView(),
    DailyWorship()

  ];
  @override
  Widget build(BuildContext context) {
    return  Directionality(

      textDirection: TextDirection.rtl,
      child: Scaffold(
        floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
        body: screens[currentindex],
        floatingActionButton:
          FloatingActionButton(


            onPressed: () {
              setState(() {
                showMenu(
                    color: Colors.white.withOpacity(.1),
                    elevation: 0,
                    context: context,
                    position:
                    RelativeRect.fromDirectional( textDirection: TextDirection.ltr, start: 200,end: 100,
                        top: 440,bottom:200

                    ),
                    items: [
                      PopupMenuItem(

                          child:Column(
                            children: [
                              Container(
                                width: 177,
                                height: 53,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: ListTile(
                                    leading:                         Image.asset("assets/images/tasks.png",width: 15,height: 15,),
                                    title:                      Text("مهمه اليوميه ")

                                ),
                              ),
                              Divider(height: 4,),

                              Container(
                                width: 177,
                                height: 53,
                                decoration: BoxDecoration(
                                    color: Colors.white,


                                    borderRadius: BorderRadius.circular(8)),
                                child: ListTile(
                                    leading:          Image.asset("assets/images/mushaf.png",width: 15,height: 15,),
                                    title:                      Text("استوقفتني ايه ")

                                ),
                              ),
                              Divider(height: 4,),
                              Container(
                                width: 177,
                                height: 53,
                                decoration: BoxDecoration(
                                    color: Colors.white,

                                    borderRadius: BorderRadius.circular(8)),
                                child: ListTile(
                                    leading:                         Image.asset("assets/images/pray.png",width: 15,height: 15,),
                                    title:                      Text("عباده  يوميه")

                                ),
                              ),
                            ],
                          )


                      ),

                    ]


                );


              });

            },
            child:
            Icon(Icons.add),

          ),

        bottomNavigationBar: BottomNavigationBar(
// backgroundColor: Colors.white,
          items: [
          BottomNavigationBarItem
            (




                icon: Image.asset("assets/images/icons2.png",width: 24,height: 24,),

            label: 'الرئبسيه',),
            BottomNavigationBarItem(
                  icon: Image.asset("assets/images/icons.png",width: 24,height: 24,),

                label: 'الفرأن الكريم' ),
            BottomNavigationBarItem(icon:Image.asset("assets/images/icons3.png",


              width: 24,height: 24,),label: 'العبادات اليوميه'),
            BottomNavigationBarItem(
                icon:Image.asset("assets/images/icons4.png",

                  width: 24,height: 24,),label: 'المهام اليوميه' ),




          ],
          currentIndex: currentindex,
          onTap: (index){
            setState(() {
              currentindex=index;

            });
          },



        ),

      ),
    );
  }
}
