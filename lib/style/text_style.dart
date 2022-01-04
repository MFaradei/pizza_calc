import 'package:flutter/material.dart';
import 'package:untitled/style/app_colors.dart';

abstract class AppTextStyle {
  static const button = TextStyle(
    fontSize: 16,
    color: Colors.white,
    height: 19 / 16,
    fontFamily: 'PantonBlack',
  );
  static const title = TextStyle(
    //вваедите номер телефона
    fontSize: 18,
    color: AppColors.darkgrey,
    height: 19 / 16,
    fontFamily: 'PantonBlack',
  );
  static const prompt = TextStyle(
    //+7  ****
    fontSize: 16,
    color: AppColors.grey1,
    height: 19 / 16,
    fontFamily: 'PantonBlack',
  );
  static const textLink = TextStyle(
    fontSize: 16,
    color: AppColors.blue,
    height: 19 / 16,
    fontFamily: 'PantonBlack',
  );
  static const titlereg = TextStyle(
    fontSize: 20,
    color: AppColors.darkgrey,
    height: 20 * 0.87,
    fontFamily: 'VAGWorld',
  );
  static const titleCalc = TextStyle(
    fontSize: 30,
    color: Colors.black,
    height: 36 / 30,
    fontWeight: FontWeight.w600,
    //fontFamily: 'VAGWorld',
  );
  static const titleCalcMin = TextStyle(
    fontSize: 16,
    color: Colors.black,
    height: 19 / 16,
    fontWeight: FontWeight.w600,
    //fontFamily: 'VAGWorld',
  );
  static const titleCalcParm = TextStyle(
    fontSize: 18,
    color: Colors.black,
    height: 21 / 18,
  );
  static const titleCalcRadio = TextStyle(
    fontSize: 16,
    color: AppColors.grey1,
    height: 19 / 16,
  );
}
