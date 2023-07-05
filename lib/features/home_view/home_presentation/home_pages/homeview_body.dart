import 'package:flutter/material.dart';
import 'package:myapp/features/home_view/home_presentation/home_widgets/customgridview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        child:Column(
          children: [
            CustomlistView()
          ],
        )

      ),
    );
  }
}
