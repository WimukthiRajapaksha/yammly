import 'package:flutter/material.dart';
import 'package:yummly/const/screenConst.dart';
import 'package:yummly/model/testing.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenConst(context);
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1,
      ),
      itemBuilder: (ctx, index) => Stack(
        children: [
          Container(
            height: 300,
            margin: EdgeInsets.only(left: 2, right: 2),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/explore-${(index % 4) + 1}.jpg",
                  ),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                  offset: Offset(1, 2),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Colors.black.withAlpha(200),
                    Colors.black54.withAlpha(150),
                  ],
                ),
                borderRadius: BorderRadius.circular(8)),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/explore-icon-${(index % 5) + 1}.png",
                    color: Colors.white,
                    height: 30,
                    width: 30,
                    fit: BoxFit.scaleDown,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(180),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: ScreenConst.widthRatio(40),
                  child: Text(
                    exploreList[index],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      itemCount: exploreList.length,
      scrollDirection: Axis.vertical,
    );
  }
}
