

import 'package:flutter/material.dart';

import '../models/appBanner.dart';

class BannerItem extends StatelessWidget {
  final AppBanner appBanner;
  const BannerItem({
    Key? key, required this.appBanner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: NetworkImage(appBanner.thumbnailUrl),
            fit: BoxFit.cover),
      ),
      child: DefaultTextStyle(
          style: TextStyle(color: Colors.white, fontSize: 20),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('title'.toUpperCase()),
                    Container(
                      width: 200,
                      child: Text(
                        appBanner.title.toUpperCase(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
