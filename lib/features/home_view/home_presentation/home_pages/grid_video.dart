

import 'package:flutter/material.dart';

class GridVideo  extends StatelessWidget {
  const GridVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return               Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
    height: MediaQuery.of(context).size.height*.4,
    child: GridView.builder(
    itemCount: 8,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 4,
    childAspectRatio: 2/3,
    crossAxisSpacing: 5,
    mainAxisSpacing: 5
    ),
    itemBuilder:(context,index){
    return Container(

    width: 145,
    height: 110,
    decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(8),
    ),

    child:Text("hhhhhhhh"));
    }),
    ),
    )
    ;
  }
}
