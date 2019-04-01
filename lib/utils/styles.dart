import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './custom_colors.dart';


//input styles
const ryInputBorder = InputBorder.none;
const ryInputPadding = EdgeInsets.only(top: 4.0, left: 14.00, right: 14.0, bottom: 4.0);
const ryInputLabelStyle = TextStyle(color: customPrimary, fontSize: 16.0);
const ryRadioLabelStyle = TextStyle(color: CustomColors.colorPrimary90, fontSize: 16.0);
const ryPickerLabelStyle = ryInputLabelStyle;
const ryPickerTextStyle = TextStyle(color: CupertinoColors.inactiveGray, fontSize: 16.0);

//text styles
const ryLightTxtOnDark = CustomColors.colorWhite;
const ryLightHeadlineOnDark = TextStyle(fontSize: 20.0, color: CustomColors.colorWhite, fontWeight: FontWeight.w600);
const rySmallLabel = TextStyle(fontSize: 12.0, height: 1.3, color: Color(0xFF637085)); //customPrimary[400]
const rySmallBoldLabel = TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600);
const rySmallText = TextStyle(fontSize: 12.0, height: 1.3);
const ryMediumText = TextStyle(fontSize: 14.0, height: 1.1);
const ryHeadlineText = TextStyle(fontSize: 20.0, color: CustomColors.colorBlue, height: 1.1);
const ryHeadlineLargeText = TextStyle(fontSize: 24.0, color: CustomColors.colorBlue, height: 1.1);
const ryCtaHeadlineText = TextStyle(fontSize: 18.0, color: customPrimary, height: 1.1);
const ryCtaHeadline2Text = TextStyle(fontSize: 16.0, color: CustomColors.colorBlue, height: 1.1);
const ryMediumTextNote = TextStyle(fontSize: 14.0, height: 1.1, fontStyle: FontStyle.italic, color: Color(0xFF828d9d)); //customPrimary[300]

//button style
const ryButtonTxtColor = ryLightTxtOnDark;
const ryRoundedBorder = RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3.0)));