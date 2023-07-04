

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
        floatingActionButton:FloatingActionButton(


          onPressed: () {  },
          child: Icon(Icons.add),

        ),
        bottomNavigationBar: BottomNavigationBar(
type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
unselectedItemColor: Colors.black,

selectedIconTheme: IconThemeData(
  color: Colors.blue,
),
backgroundColor: Colors.white,
          items: [
          BottomNavigationBarItem
            (



            icon: Image.asset("assets/images/icons2.png",width: 24,height: 24,),label: 'الرئبسيه',),
            BottomNavigationBarItem(icon:Image.asset("assets/images/icons.png",width: 24,height: 24,),label: 'الفرأن الكريم' ),
            BottomNavigationBarItem(icon:Image.asset("assets/images/icons3.png",width: 24,height: 24,),label: 'العبادات اليوميه'),
            BottomNavigationBarItem(icon:Image.asset("assets/images/icons4.png",width: 24,height: 24,),label: 'المهام اليوميه' ),




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
