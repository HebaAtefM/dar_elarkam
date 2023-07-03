


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/home_view/home_presentation/home_pages/homeview.dart';
import 'package:myapp/features/splash_view/presentation/widgets/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class BoardModel
{
  final String image;
  final String title;
  final String body;

  BoardModel({required this.image, required this.title, required this.body});
}
class OnBoardBody extends StatefulWidget {
  const OnBoardBody({Key? key}) : super(key: key);

  @override
  State<OnBoardBody> createState() => _OnBoardBodyState();
}

class _OnBoardBodyState extends State<OnBoardBody> {

  late List<BoardModel> list;

  @override
  void initState()
  {
    super.initState();

    list =
    [
      BoardModel(
        image: 'assets/images/onboard1.png',
        title: "أهلا وسهلا في تطبيق دار الأرقم",
        body: "هذا التطبيق يساعدك علي أن تكون مسلما متزن وسعيد وحياتك منظمه حيث يربط بين تنظيم حياتك مع امور دنياك وتنظيم علاقتك مع الله",
      ),
      BoardModel(
        image: 'assets/images/onboard2.png',
        title: "تدبر الأيات",
        body: "هذا التطبيق يجعلك تتفكر في ايات الله وتسجل تلك الملاحظات خلال القراءه ويمكنك تحديد الأيه التي استوقفتك لتدبر معناها ويمكنك الرجوع اليها في اي وقت",
      ),
      BoardModel(
        image: 'assets/images/onboard3.png',
        title: "تنظيم الوقت والعبادات",
        body: "يمكنك من خلال التطبيق ان تحدد مشاريعك وخططك اليوميه وانجازاتك حيث يساعدك بشكل كبير علي تنظيم الوقت علي المستوي الشخصي والشركات",
      ),
    ];
  }

  final controller = PageController();
int currentpage=0;
  void submit()
  {
    GoRouter.of(context).push('/home');
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(

      textDirection: TextDirection.ltr,
      child: SafeArea(
        child: Scaffold(


          body: Stack(
            children: [
              Container(
width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            //color: Colors.grey,
                image: DecorationImage(image: AssetImage("assets/images/bg.png",),
                  fit: BoxFit.fill


                )
              ),),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                        child: CustomAppBar()),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: PageView.builder(
                          physics: BouncingScrollPhysics(),

                          onPageChanged: (i)
                          {
                            setState(() {
                              currentpage=i;
                            });


                          },
                          controller: controller,
                          itemCount: list.length,
                          itemBuilder: (ctx, i) => Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image(

                                image: AssetImage(
                                  list[i].image,

                                ),
                              ),
                              SizedBox(height: 30),
                              Text(
                                list[i].title,
                                style: TextStyle(
                                  fontSize: 24.0,

                                ),
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                list[i].body,
                                textAlign: TextAlign.center,
                               // overflow: TextOverflow.ellipsis,


                              ),
                            ],
                          ),
                        ),
                      ),
                    ),


                    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      TextButton(
          onPressed: () {
            controller.previousPage( duration: Duration(milliseconds: 30), curve:Curves.bounceIn);


          },
          child: Text(
          currentpage==1 ? "السابق":"", style: TextStyle(color: Colors.grey,fontSize: 19),)
      ),

     Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         SmoothPageIndicator(
         controller: controller,
         effect: ExpandingDotsEffect(

         dotColor: Colors.grey,
         activeDotColor: Colors.blue,
         dotHeight: 5,
         expansionFactor: 3,
         dotWidth: 5,
         spacing: 5.0,
         ),
         count: list.length,
         ),
         SizedBox(height: 10,),
         currentpage==2?
         Center(
           child: GestureDetector(
             onTap: (){
                 GoRouter.of(context).push('/home');
             },
             child: Container(
                   width: 180,
                   height: 55,
                   decoration:   BoxDecoration(
                     borderRadius: BorderRadius.circular(12),
                     color: Colors.blue

                   ),

                   child: Center(child: Text("البدأ الان",style: TextStyle(fontSize: 16,color: Colors.white),))),
           ),
         ):Text(""),
       ],
     ),
       currentpage==2?Text(""):  TextButton(
           onPressed: () {
             controller.nextPage( duration: Duration(milliseconds: 30), curve:Curves.bounceIn);


           },

           child: Text(
             "التالي", style: TextStyle(color: Colors.blue,fontSize: 19),)
       ),





    ],
    ),



                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        width: 100,
                        height: 5,
                        decoration: BoxDecoration(
color: Colors.black
                        ),
                      ),
                    )



                  ],

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
