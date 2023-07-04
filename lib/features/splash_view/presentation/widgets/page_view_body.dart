



import 'package:flutter/material.dart';

class PageViewBody extends StatefulWidget {
   PageViewBody({Key? key, required this.currentpage, required this.controller, required this.list}) : super(key: key);
late final int currentpage;
final PageController controller;
final List list;
  @override
  State<PageViewBody> createState() => _PageViewBodyState();
}

class _PageViewBodyState extends State<PageViewBody> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: BouncingScrollPhysics(),

      onPageChanged: (i)
      {
        setState(() {
          widget.currentpage=i;
        });


      },
      controller: widget.controller,
      itemCount: widget.list.length,
      itemBuilder: (ctx, i) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(
            width: 300,
            height: 300,

            image: AssetImage(
              widget.list[i].image,


            ),
          ),
          SizedBox(height: 30),
          Container(
            width: 246,
            height: 30,
            child: Center(
              child: Text(
                widget.list[i].title,
                style: TextStyle(
                  fontSize: 19.0,

                ),
              ),
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            width: 382,
            height: 96,
            child: Text(
              widget.list[i].body,
              style: TextStyle(
                fontSize: 16.0,

              ),
              textAlign: TextAlign.center,
              // overflow: TextOverflow.ellipsis,


            ),
          ),
        ],
      ),
    );
  }
}
