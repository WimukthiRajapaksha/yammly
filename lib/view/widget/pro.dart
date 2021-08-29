import 'package:flutter/material.dart';
import 'package:yummly/const/screenConst.dart';
import 'package:yummly/model/testing.dart';

class Pro extends StatelessWidget {
  const Pro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenConst(context);
    return ListView.separated(
      itemBuilder: (ctx, index) {
        if (index == 0 || index == proList.length + 1)
          return SizedBox(
            height: 20,
          );
        else
          return Container(
            margin: EdgeInsets.all(2),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: ScreenConst.widthRatio(90),
                  // color: Colors.amber,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/pro-${((index - 1) % 7) + 1}.jpg"),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(1, 2),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.black45.withAlpha(10),
                        Colors.black.withAlpha(250)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.circular(ScreenConst.widthRatio(20)),
                        child: Image.asset(
                          "assets/images/pro-prof-${((index - 1) % 5) + 1}.jpg",
                          // color: Colors.white,
                          fit: BoxFit.cover,
                          width: ScreenConst.widthRatio(30),
                          height: ScreenConst.widthRatio(30),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        proList[index - 1].title,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        proList[index - 1].subTitle,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: ScreenConst.widthRatio(10),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
      },
      separatorBuilder: (ctx, index) => SizedBox(
        height: 10,
      ),
      itemCount: proList.length + 2,
    );
  }
}
