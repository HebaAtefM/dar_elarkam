


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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

  var isLast = false;
  final controller = PageController();

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
width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            //color: Colors.grey,
                image: DecorationImage(image: AssetImage("assets/images/bg.png",),


                )
              ),),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      padding: const EdgeInsets.all(30.0),
                      child: PageView.builder(
                        physics: BouncingScrollPhysics(),
                        onPageChanged: (i)
                        {
                          if (i == (list.length - 1) && !isLast)
                            setState(() => isLast = true);
                          else if (isLast) setState(() => isLast = false);
                        },
                        controller: controller,
                        itemCount: list.length,
                        itemBuilder: (ctx, i) => Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Image(
                                image: AssetImage(
                                  list[i].image,
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Text(
                              list[i].title,
                              style: TextStyle(
                                fontSize: 24.0,

                              ),
                            ),
                            SizedBox(height: 15.0),
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
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[

                        Center(
                          child: SmoothPageIndicator(
                            controller: controller,
                            effect: ExpandingDotsEffect(
                              dotColor: Colors.grey,
                              activeDotColor: Colors.blue,
                              dotHeight: 8,
                              expansionFactor: 3,
                              dotWidth: 8,
                              spacing: 5.0,
                            ),
                            count: list.length,
                          ),
                        ),
                        Spacer(),
                        FloatingActionButton(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          onPressed: ()
                          {
                            if (isLast)
                            {
                              submit();
                            } else
                              controller.nextPage(
                                duration: Duration(milliseconds: 750),
                                curve: Curves.fastLinearToSlowEaseIn,
                              );
                          },
                          child: Text("التالي",style: TextStyle(color: Colors.grey),)
                        ),
                      ],
                    ),
                  )

                ],

              ),

            ],
          ),
        ),
      ),
    );
  }
}
