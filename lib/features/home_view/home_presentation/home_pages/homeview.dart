

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myapp/features/home_view/home_presentation/home_pages/daily%20worship.dart';
import 'package:myapp/features/home_view/home_presentation/home_pages/homeview_body.dart';
import 'package:myapp/features/home_view/home_presentation/home_pages/quraan_view.dart';
import 'package:myapp/features/home_view/home_presentation/home_pages/tasks_view.dart';
import 'package:myapp/features/home_view/home_presentation/home_widgets/dropdown_menu.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  GlobalKey<ScaffoldState>_scafoldState =GlobalKey<ScaffoldState>();
  int currentindex=0;
  List<Widget> screens=[
    HomeViewBody(drawerController: DrawerController(child:Image.asset("assets/images/menu.png") , alignment: DrawerAlignment.start),),
    QuraanView(),
    TasksView(),
    DailyWorship()

  ];
  IconData fabicon=Icons.add;
  bool _isshowmenu=false;
void togle(){
  setState(() {
    _isshowmenu=!_isshowmenu;

  });
}


  @override
  Widget build(BuildContext context) {
    return  Directionality(

      textDirection: TextDirection.rtl,
      child: Scaffold(

        




       // backgroundColor: isshowmenu?Colors.grey:Colors.blue,
        floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
        body: screens[currentindex],
        floatingActionButton:
          FloatingActionButton(
//foregroundColor: isshowmenu?Colors.grey:Colors.blue,
          backgroundColor:_isshowmenu? Colors.grey:Colors.blue,

            onPressed: () {
              togle();


              showmenu(context);


            },

          child:_isshowmenu?Icon(Icons.close):Icon(Icons.add),

          ),

        bottomNavigationBar: BottomNavigationBar(
          //selectedItemColor: selsectedcolor,
//selectedIconTheme:IconThemeData (color: selsectedcolor),
// backgroundColor: Colors.white,
          items: [
          BottomNavigationBarItem
            (




                icon:currentindex==0?
                Image.asset("assets/images/icons2.png",color:Colors.blue,width: 24,height: 24,):
                Image.asset("assets/images/icons2.png",width: 24,height: 24,)

            ,

            label: 'الرئبسيه',),
            BottomNavigationBarItem(
                  icon:currentindex==1?
                  Image.asset("assets/images/icons.png",color:Colors.blue,width: 24,height: 24,):
                  Image.asset("assets/images/icons.png",width: 24,height: 24,)
                ,

                label: 'الفرأن الكريم' ),
            BottomNavigationBarItem(
              icon:currentindex==2?

           Image.asset("assets/images/icons3.png",color:Colors.blue,


              width: 24,height: 24,):
    Image.asset("assets/images/icons3.png",width: 24,height: 24,)
    ,



        label: 'العبادات اليوميه'),
            BottomNavigationBarItem(
                icon:
                currentindex==3?
                Image.asset("assets/images/icons4.png",color:Colors.blue,

                  width: 24,height: 24,):      Image.asset("assets/images/icons4.png",width: 24,height: 24,)
    ,label: 'المهام اليوميه' ),




          ],
          currentIndex: currentindex,
          onTap: (index){
            setState(() {
              currentindex=index;
            //isshowmenu=true;
           // selsectedcolor=Colors.blue:Colors.black;

            });
          },



        ),

      ),
    );
  }
}
