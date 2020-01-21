import 'package:flutter/widgets.dart';

class ScreenConfig {
static MediaQueryData _mediaQueryData;
static double screenH;
static double screenW;
static double blockSizeH;
static double blockSizeV;

void init(BuildContext context){
  _mediaQueryData = MediaQuery.of(context);
  screenW = _mediaQueryData.size.width;
  screenH = _mediaQueryData.size.height;
  blockSizeH = screenH / 100;
  blockSizeV = screenW / 100;
}
}
