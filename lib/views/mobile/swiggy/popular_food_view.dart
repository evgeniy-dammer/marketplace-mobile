import 'package:marketplace_client/client/client.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_client/models/spotlight_best_top_food.dart';
import 'package:marketplace_client/utils/ui_helper.dart';
import 'package:marketplace_client/widgets/mobile/spotlight_best_top_food_item.dart';
import 'package:marketplace_client/widgets/responsive.dart';
import 'package:grpc/grpc.dart';

import '../../../services/item.pbgrpc.dart';

class PopularFoodView extends StatefulWidget {
  const PopularFoodView({Key? key}) : super(key: key);

  @override
  State<PopularFoodView> createState() => _PopularFoodViewState();
}

class _PopularFoodViewState extends State<PopularFoodView> {

  @override
  initState() {
    super.initState();
  }

  Future<List<Item>>? sendRequest() async {
    var channel = GrpcClient().getClient("10.0.2.2", 1111);
    var stub = ItemServiceClient(channel, options: CallOptions(timeout: const Duration(seconds: 30)));

    try {
      var readRequest = FindAllRequest();
      var response = await stub.findAll(readRequest);
      return response.items;
    } catch (e) {
        print("ERROROROROR "+ e.toString());
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);
    final customWidth = MediaQuery.of(context).size.width / (isTabletDesktop ? 3.8 : 1.1);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Icon(Icons.thumb_up),
                    UIHelper.horizontalSpaceExtraSmall(),
                    Text('Popular Food', style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 20.0)),
                    const Spacer(),
                    Row(
                      children: <Widget>[
                        Text('SEE ALL', style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold)),
                        UIHelper.horizontalSpaceExtraSmall(),
                        ClipOval(
                          child: Container(
                            alignment: Alignment.center,
                            height: 25.0,
                            width: 25.0,
                            child: const Icon(Icons.arrow_forward_ios, size: 12.0, color: Colors.black)
                          )
                        )
                      ]
                    )
                  ]
                ),
                //UIHelper.verticalSpaceExtraSmall(),
                //Text('Restaurants with best safety standards', style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.grey))
              ]
            )
          ),
          UIHelper.verticalSpaceMedium(),
          LimitedBox(
            maxHeight: 270.0,
            child: FutureBuilder<List<Item>>(
              future: sendRequest(),
              builder: (BuildContext context, AsyncSnapshot<List<Item>> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      Item v = snapshot.data![index];
                      return SizedBox(
                        width: customWidth,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SpotlightBestTopFoodItem(restaurant: v),
                            //SpotlightBestTopFoodItem(restaurant: v)
                          ]
                        )
                      );
                    }
                  );
                }
                else{
                  return const SizedBox.shrink();
                }
              }
            )
          )
        ]
      )
    );
  }
}
