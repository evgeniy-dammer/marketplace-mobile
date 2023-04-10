import 'package:marketplace_client/views/mobile/home_bottom_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_client/utils/app_colors.dart';
import 'package:marketplace_client/utils/ui_helper.dart';
import 'package:marketplace_client/views/mobile/scanner/scan_qr_code_view.dart';

class GenieScreen extends StatelessWidget {
  const GenieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          color: Colors.indigo,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.language, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      UIHelper.verticalSpaceLarge(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              UIHelper.verticalSpaceExtraLarge(),
                              Text('marketplace', style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white))
                            ]
                          ),
                          UIHelper.verticalSpaceMedium(),
                          Text('Welcome to a first mobile menu app',
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.grey[200], fontSize: 17.0, fontWeight: FontWeight.bold),
                          ),
                          Text('in Turkmenistan!',
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.grey[200], fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        ]
                      ),
                      UIHelper.verticalSpaceLarge(),
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Open Scanner app on your mobile phone and scan QR code with WiFi icon to connect to our WiFi point',
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14.0, fontWeight: FontWeight.bold)
                            ),
                            UIHelper.verticalSpaceMedium(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ClipOval(
                                  child: Container(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Image.asset('assets/icons/wifi.png', height: 60.0, width: 60.0)
                                  )
                                )
                              ]
                            ),
                            UIHelper.verticalSpaceMedium(),
                            Text(
                              'With buttons below you can open a menu.',
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14.0, fontWeight: FontWeight.bold)
                            )
                          ]
                        )
                      ),
                      UIHelper.verticalSpaceMedium(),
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
                        child: const _HeaderView(title: 'Take a new table', buttonTitle: 'SCAN QR CODE', type: 1)
                      ),
                      UIHelper.verticalSpaceMedium(),
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
                        child: const _HeaderView(title: 'Join existing table', buttonTitle: 'SCAN QR CODE', type: 2)
                      )
                    ]
                  )
                )
              )
            ]
          )
        )
      )
    );
  }
}

class _HeaderView extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final int type;

  const _HeaderView({
    Key? key,
    required this.title,
    required this.buttonTitle,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 17.0, fontWeight: FontWeight.bold)),
        UIHelper.verticalSpaceMedium(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          height: 50.0,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: darkOrange),
            child: Text(
              buttonTitle,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white, fontSize: 14.0)
            ),
            onPressed: () async {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeBottomNavigationScreen()));
              //Navigator.push(context, MaterialPageRoute(builder: (context) => ScanQRCodeScreen(type: type)));
            }
          )
        ),
        UIHelper.verticalSpaceMedium(),
      ]
    );
  }
}
