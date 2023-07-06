


import 'package:flutter/material.dart';
import 'package:myapp/features/home_view/home_presentation/home_widgets/alert_dialoge_body.dart';

class TheLastRead extends StatelessWidget {
  const TheLastRead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        children: [
          Container(
              height: 100,
              child: Image.asset("assets/images/back2.png",)),
          GestureDetector(
            onTap: (){
              showDialog(context: context, builder: (context){
                return AlertBody();
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child: Container(
                width: 380,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),

                ),
                child: Row(
               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("اخر قراءه",style: TextStyle(fontSize: 11,color: Color(0xff3E3E46)),),
                          SizedBox(height: 2,),
                          Text("سوره البقره",style: TextStyle(fontSize: 19,color: Color(0xff3E3E46)),),
                          SizedBox(height: 2,),
                          Text("رقم الأيه 20",style: TextStyle(fontSize: 11,color: Color(0xff3E3E46)),),



                        ],
                      ),
                    ),
                    SizedBox(width: 50,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("اكمل اللقراءه",style: TextStyle(fontSize: 14,color: Color(0xff3E3E46)),),
                          Icon(Icons.arrow_forward_sharp)




                        ],
                      ),
                    ),



                  ],
                ),
              ),
            ),
          ),
          Align(alignment: Alignment.bottomLeft,
              child: Image.asset("assets/images/mushaf.png",width: 70,height: 140,)),

        ],
      ),
    );
  }
}
