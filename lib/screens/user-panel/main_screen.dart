import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: unused_import
import 'package:lottie/lottie.dart';

import '../../utils/app-constant.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor:AppConstant.appSecondaryColor,
        statusBarBrightness: Brightness.light ),
      backgroundColor: AppConstant.appMainColor,
      title: Text(AppConstant.appMainName),
      centerTitle: true,
      ),
      );
  }
}
