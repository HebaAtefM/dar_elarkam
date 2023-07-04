


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/core/utiles/assets.dart';
import 'package:myapp/features/home_view/home_presentation/home_pages/homeview.dart';
import 'package:myapp/features/splash_view/presentation/widgets/custom_app_bar.dart';
import 'package:myapp/features/splash_view/presentation/widgets/custom_textbutton.dart';
import 'package:myapp/features/splash_view/presentation/widgets/page_view_body.dart';
import 'package:myapp/features/splash_view/presentation/widgets/smoothpage_indecator.dart';
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
        image: Assets.onboard1,
        title: "أهلا وسهلا في تطبيق دار الأرقم",
        body: "هذا التطبيق يساعدك علي أن تكون مسلما متزن وسعيد وحياتك منظمه حيث يربط بين تنظيم حياتك مع امور دنياك وتنظيم علاقتك مع الله",
      ),
      BoardModel(
        image: Assets.onboard2,
        title: "تدبر الأيات",
        body: "هذا التطبيق يجعلك تتفكر في ايات الله وتسجل تلك الملاحظات خلال القراءه ويمكنك تحديد الأيه التي استوقفتك لتدبر معناها ويمكنك الرجوع اليها في اي وقت",
      ),
      BoardModel(
        image: Assets.onboard3,
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
    return SafeArea(
      child: Scaffold(


        body: Stack(
          children: [
            Container(
width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          //color: Colors.grey,
              image: DecorationImage(image: AssetImage(Assets.background),
                fit: BoxFit.fill


              )
            ),),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
               // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                      child: CustomAppBar()),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: PageView.builder(
                      physics: BouncingScrollPhysics(),

                      onPageChanged: (i)
                      {
                        setState(() {
                         currentpage=i;
                        });


                      },
                      controller: controller,
                      itemCount:list.length,
                      itemBuilder: (ctx, i) => Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            width: 300,
                            height: 300,

                            image: AssetImage(
                             list[i].image,


                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: 246,
                            height: 30,
                            child: Center(
                              child: Text(
                               list[i].title,
                                style: TextStyle(
                                  fontSize: 19.0,

                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            width: 382,
                            height: 96,
                            child: Text(
                             list[i].body,
                              style: TextStyle(
                                fontSize: 16.0,

                              ),
                              textAlign: TextAlign.center,
                              // overflow: TextOverflow.ellipsis,


                            ),
                          ),
                        ],
                      ),
                    )
                  ),
                  SizedBox(height: 10,),


                  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    CustomTextButton(onpressed: (){
      controller.previousPage( duration: Duration(milliseconds: 30), curve:Curves.bounceIn);
    }, text:currentpage==1 ?  "السابق":"", color: Color(0xff3E3E46),),

    SmoothPageIndicatorColumn(controller: controller,list: list,currentpage: currentpage,),
     currentpage==2?Text(""): CustomTextButton(onpressed: ()
     { controller.nextPage( duration: Duration(milliseconds: 30), curve:Curves.bounceIn); },

       text: "التالي", color: Colors.blue,




     )






    ],
    ),






                ],

              ),
            ),

          ],
        ),
      ),
    );
  }
}
