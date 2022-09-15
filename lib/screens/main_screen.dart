import 'package:flutter/material.dart';
import 'package:pageviewcontroller/models/appBanner.dart';

import 'banner_item.dart';
import 'indicator.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom PageView'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            height: 160,
            // decoration: BoxDecoration(color: Colors.orange[100]),
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              controller: PageController(viewportFraction: 0.7),
              itemCount: appBannerList.length,
              itemBuilder: (context, index) {
                double _scale = selectedIndex == index ? 1 : 0.8;
                return TweenAnimationBuilder(
                    duration: const Duration(milliseconds: 350),
                    tween: Tween<double>(begin: 0.8, end: _scale),
                    // curve: Curves.ease,
                    child: BannerItem(appBanner: appBannerList[index]),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: value,
                        child: child,
                      );
                    },
                    );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  appBannerList.length,
                  (index) => Indicator(
                        isActive: selectedIndex == index ? true : false,
                      ))
            ],
          ),
        ],
      ),
    );
  }
}
