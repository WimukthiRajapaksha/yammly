import 'package:flutter/material.dart';
import 'package:yummly/model/testing.dart';
import 'package:yummly/view/screen/mainScreen.dart';

class JustForYou extends StatelessWidget {
  const JustForYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemBuilder: (ctx, index) {
        if (index == 0 || index == FoodsList.length + 1) {
          return Container(
            height: 20,
          );
        } else {
          return CardItem(
            index: index,
            item: FoodsList[index - 1],
          );
        }
      },
      separatorBuilder: (ctx, index) => SizedBox(
        height: 10,
      ),
      itemCount: FoodsList.length + 2,
    );
  }
}
