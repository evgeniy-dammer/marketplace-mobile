import 'package:flutter/material.dart';
import 'package:marketplace_client/models/category.dart';
import 'package:marketplace_client/utils/ui_helper.dart';

class CategoriesView extends StatelessWidget {
  final categories = Category.getCategories();

  CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              const Icon(Icons.fastfood),
              UIHelper.horizontalSpaceExtraSmall(),
              Text('Categories', style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 20.0)),
              const Spacer(),
            ]
          ),
          UIHelper.verticalSpaceMedium(),
          LimitedBox(
            maxHeight: 124.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(10.0),
                width: 70.0,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(height: 50.0, color: Colors.grey[200])
                    ),
                    Positioned(
                      top: 20.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset(categories[index].image, height: 40.0, width: 40.0, fit: BoxFit.cover),
                          UIHelper.verticalSpaceSmall(),
                          Text(categories[index].name, maxLines: 2, textAlign: TextAlign.center)
                        ]
                      )
                    )
                  ]
                )
              )
            )
          )
        ]
      )
    );
  }
}
