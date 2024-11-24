import 'package:et_driver/themes/theme_export.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

enum TextStyleType {
  headingXLarge,
  headingLarge,
  headingRegular,
  headingSmall,
  overlineLarge,
  overlineRegular,
  overlineSmall,
  bodyLarge,
  bodyRegular,
  bodySmall,
  buttonLarge,
  buttonRegular,
  buttonSmall,
  inputField,
  tabBarTab,
}

class TextStyleModel {
  const TextStyleModel({
    required this.headingXLarge,
    required this.headingLarge,
    required this.headingRegular,
    required this.headingSmall,
    required this.overLineLarge,
    required this.overLineRegular,
    required this.overLineSmall,
    required this.bodyLarge,
    required this.bodyRegular,
    required this.bodySmall,
    required this.buttonLarge,
    required this.buttonRegular,
    required this.buttonSmall,
    required this.inputField,
    required this.tabBarTab,
    required this.subtitleRegular,
  });

  final TextStyle headingXLarge;
  final TextStyle headingLarge;
  final TextStyle headingRegular;
  final TextStyle headingSmall;
  final TextStyle overLineLarge;
  final TextStyle overLineRegular;
  final TextStyle overLineSmall;
  final TextStyle bodyLarge;
  final TextStyle bodySmall;
  final TextStyle bodyRegular;
  final TextStyle buttonLarge;
  final TextStyle buttonRegular;
  final TextStyle buttonSmall;
  final TextStyle inputField;
  final TextStyle tabBarTab;
  final TextStyle subtitleRegular;
}

class HText extends StatelessWidget {
  /* HEADINGS */

  ///styleName: headingXLarge;
  ///font-size: 24px;
  ///font-weight: 600;
  const HText.headingXLarge(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
    this.height,
  }) : styleType = TextStyleType.headingXLarge;

  ///styleName: headingLarge;
  ///font-size: 21px;
  ///font-weight: 600;
  const HText.headingLarge(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
    this.height,
  }) : styleType = TextStyleType.headingLarge;

  ///styleName: headingRegular;
  ///font-size: 18;
  ///font-weight: 600;
  const HText.headingRegular(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
    this.height,
  }) : styleType = TextStyleType.headingRegular;

  ///styleName: headingSmall;
  ///font-size: 16;
  ///font-weight: 600;
  const HText.headingSmall(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
    this.height,
  }) : styleType = TextStyleType.headingSmall;

  /* OVERLINES */

  ///styleName: overlineLarge;
  ///font-size: 16px;
  ///font-weight: 600;
  const HText.overlineLarge(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
    this.height,
  }) : styleType = TextStyleType.overlineLarge;

  ///styleName: overlineRegular;
  ///font-size: 14px;
  ///font-weight: 600;
  const HText.overlineRegular(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
    this.height,
  }) : styleType = TextStyleType.overlineRegular;

  ///styleName: overlineSmall;
  ///font-size: 12px;
  ///font-weight: 600;
  const HText.overlineSmall(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.height,
    this.fontStyle,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
  }) : styleType = TextStyleType.overlineSmall;

  /* BODY */

  ///styleName: bodyLarge;
  ///font-size: 19px;
  ///font-weight: 400;
  const HText.bodyLarge(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
  }) : styleType = TextStyleType.bodyLarge;

  ///styleName: bodyRegular;
  ///font-size: 16px;
  ///font-weight: 400;
  const HText.bodyRegular(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
  }) : styleType = TextStyleType.bodyRegular;

  ///styleName: bodySmall;
  ///font-size: 15px;
  ///font-weight: 400;
  const HText.bodySmall(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
  }) : styleType = TextStyleType.bodySmall;

  ///styleName: buttonLarge;
  ///font-size: 19px;
  ///font-weight: 600;
  const HText.buttonLarge(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
  }) : styleType = TextStyleType.buttonLarge;

  ///styleName: buttonRegular;
  ///font-size: 17px;
  ///font-weight: 600;
  const HText.buttonRegular(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
  }) : styleType = TextStyleType.buttonRegular;

  ///styleName: buttonSmall;
  ///font-size: 15px;
  ///font-weight: 600;
  const HText.buttonSmall(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
  }) : styleType = TextStyleType.buttonSmall;

  ///styleName: inputField;
  ///font-size: 17px;
  ///font-weight: 400;
  const HText.inputField(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
  }) : styleType = TextStyleType.inputField;

  ///styleName: tabBarTab;
  ///font-size: 10px;
  ///font-weight: 700;
  const HText.tabBarTab(
    this.text, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.selectable = false,
    this.expandable = false,
    this.expandText,
    this.collapseText,
    this.expandTextStyle,
    this.height,
  }) : styleType = TextStyleType.tabBarTab;

  @override
  Widget build(BuildContext context) {
    TextStyle? getStyle() {
      switch (styleType) {
        case TextStyleType.headingXLarge:
          return ETTheme.of(context).text.headingXLarge;
        case TextStyleType.headingLarge:
          return ETTheme.of(context).text.headingLarge;
        case TextStyleType.headingRegular:
          return ETTheme.of(context).text.headingRegular;
        case TextStyleType.headingSmall:
          return ETTheme.of(context).text.headingSmall;
        case TextStyleType.overlineLarge:
          return ETTheme.of(context).text.overLineLarge;
        case TextStyleType.overlineRegular:
          return ETTheme.of(context).text.overLineRegular;
        case TextStyleType.overlineSmall:
          return ETTheme.of(context).text.overLineSmall;
        case TextStyleType.bodyLarge:
          return ETTheme.of(context).text.bodyLarge;
        case TextStyleType.bodyRegular:
          return ETTheme.of(context).text.bodyRegular;
        case TextStyleType.bodySmall:
          return ETTheme.of(context).text.bodySmall;
        case TextStyleType.buttonLarge:
          return ETTheme.of(context).text.buttonLarge;
        case TextStyleType.buttonRegular:
          return ETTheme.of(context).text.buttonRegular;
        case TextStyleType.buttonSmall:
          return ETTheme.of(context).text.buttonSmall;
        case TextStyleType.inputField:
          return ETTheme.of(context).text.inputField;
        case TextStyleType.tabBarTab:
          return ETTheme.of(context).text.tabBarTab;
        default:
          return null;
      }
    }

    final style = getStyle()!.copyWith(
      color: color ?? getStyle()!.color,
      fontWeight: fontWeight ?? getStyle()!.fontWeight,
      fontSize: fontSize ?? getStyle()!.fontSize,
      fontFamily: fontFamily ?? getStyle()!.fontFamily,
      decoration: textDecoration ?? getStyle()!.decoration,
      fontStyle: fontStyle ?? getStyle()!.fontStyle,
      height: height ?? getStyle()!.height,
    );

    final textAlign = align ?? TextAlign.left;

    final textOverflow =
        maxLines != null ? (overflow ?? TextOverflow.ellipsis) : null;
    if (expandable) {
      return ExpandableText(
        text,
        expandText: expandText ?? '',
        collapseText: collapseText,
        maxLines: 3,
        style: style,
        animation: true,
        linkStyle: expandTextStyle,
      );
    } else if (!selectable) {
      return Text(
        text,
        overflow: textOverflow,
        maxLines: maxLines,
        textAlign: textAlign,
        style: style,
      );
    } else {
      return SelectionArea(
        child: Text(
          text,
          maxLines: maxLines,
          textAlign: textAlign,
          style: style,
          overflow: textOverflow,
        ),
      );
    }
  }

  final String text;
  final TextStyleType styleType;
  final Color? color;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final double? fontSize;
  final TextAlign? align;
  final int? maxLines;
  final TextDecoration? textDecoration;
  final FontStyle? fontStyle;
  final bool selectable;
  final bool expandable;
  final TextOverflow? overflow;
  final double? height;
  final String? expandText;
  final String? collapseText;
  final TextStyle? expandTextStyle;
}

class ETRichText extends StatelessWidget {
  /* HEADINGS */

  ///styleName: headingXLarge;
  ///font-size: 24px;
  ///font-weight: 600;
  const ETRichText.headingXLarge(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
  }) : styleType = TextStyleType.headingXLarge;

  ///styleName: headingLarge;
  ///font-size: 21px;
  ///font-weight: 600;
  const ETRichText.headingLarge(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
  }) : styleType = TextStyleType.headingLarge;

  ///styleName: headingRegular;
  ///font-size: 18;
  ///font-weight: 600;
  const ETRichText.headingRegular(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
  }) : styleType = TextStyleType.headingRegular;

  ///styleName: headingSmall;
  ///font-size: 16;
  ///font-weight: 600;
  const ETRichText.headingSmall(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
  }) : styleType = TextStyleType.headingSmall;

  /* OVERLINES */

  ///styleName: overlineLarge;
  ///font-size: 16px;
  ///font-weight: 600;
  const ETRichText.overlineLarge(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
  }) : styleType = TextStyleType.overlineLarge;

  ///styleName: overlineRegular;
  ///font-size: 14px;
  ///font-weight: 600;
  const ETRichText.overlineRegular(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
  }) : styleType = TextStyleType.overlineRegular;

  ///styleName: overlineSmall;
  ///font-size: 12px;
  ///font-weight: 600;
  const ETRichText.overlineSmall(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.height,
    this.fontStyle,
  }) : styleType = TextStyleType.overlineSmall;

  /* BODY */

  ///styleName: bodyLarge;
  ///font-size: 19px;
  ///font-weight: 400;
  const ETRichText.bodyLarge(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
  }) : styleType = TextStyleType.bodyLarge;

  ///styleName: bodyRegular;
  ///font-size: 17px;
  ///font-weight: 400;
  const ETRichText.bodyRegular(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
  }) : styleType = TextStyleType.bodyRegular;

  ///styleName: bodySmall;
  ///font-size: 15px;
  ///font-weight: 400;
  const ETRichText.bodySmall(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
  }) : styleType = TextStyleType.bodySmall;

  ///styleName: buttonLarge;
  ///font-size: 19px;
  ///font-weight: 600;
  const ETRichText.buttonLarge(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
  }) : styleType = TextStyleType.buttonLarge;

  ///styleName: buttonRegular;
  ///font-size: 17px;
  ///font-weight: 600;
  const ETRichText.buttonRegular(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
  }) : styleType = TextStyleType.buttonRegular;

  ///styleName: buttonSmall;
  ///font-size: 15px;
  ///font-weight: 600;
  const ETRichText.buttonSmall(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
  }) : styleType = TextStyleType.buttonSmall;

  ///styleName: inputField;
  ///font-size: 17px;
  ///font-weight: 400;
  const ETRichText.inputField(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
  }) : styleType = TextStyleType.inputField;

  ///styleName: tabBarTab;
  ///font-size: 10px;
  ///font-weight: 700;
  const ETRichText.tabBarTab(
    this.texts, {
    super.key,
    this.color,
    this.maxLines,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.align,
    this.textDecoration,
    this.overflow,
    this.fontStyle,
    this.height,
  }) : styleType = TextStyleType.tabBarTab;

  @override
  Widget build(BuildContext context) {
    TextStyle? getStyle() {
      switch (styleType) {
        case TextStyleType.headingXLarge:
          return ETTheme.of(context).text.headingXLarge;
        case TextStyleType.headingLarge:
          return ETTheme.of(context).text.headingLarge;
        case TextStyleType.headingRegular:
          return ETTheme.of(context).text.headingRegular;
        case TextStyleType.headingSmall:
          return ETTheme.of(context).text.headingSmall;
        case TextStyleType.overlineLarge:
          return ETTheme.of(context).text.overLineLarge;
        case TextStyleType.overlineRegular:
          return ETTheme.of(context).text.overLineRegular;
        case TextStyleType.overlineSmall:
          return ETTheme.of(context).text.overLineSmall;
        case TextStyleType.bodyLarge:
          return ETTheme.of(context).text.bodyLarge;
        case TextStyleType.bodyRegular:
          return ETTheme.of(context).text.bodyRegular;
        case TextStyleType.bodySmall:
          return ETTheme.of(context).text.bodySmall;
        case TextStyleType.buttonLarge:
          return ETTheme.of(context).text.buttonLarge;
        case TextStyleType.buttonRegular:
          return ETTheme.of(context).text.buttonRegular;
        case TextStyleType.buttonSmall:
          return ETTheme.of(context).text.buttonSmall;
        case TextStyleType.inputField:
          return ETTheme.of(context).text.inputField;
        case TextStyleType.tabBarTab:
          return ETTheme.of(context).text.tabBarTab;
        default:
          return null;
      }
    }

    final style = getStyle()!.copyWith(
      color: color ?? getStyle()!.color,
      fontWeight: fontWeight ?? getStyle()!.fontWeight,
      fontSize: fontSize ?? getStyle()!.fontSize,
      fontFamily: fontFamily ?? getStyle()!.fontFamily,
      decoration: textDecoration ?? getStyle()!.decoration,
      fontStyle: fontStyle ?? getStyle()!.fontStyle,
      height: height ?? getStyle()!.height,
    );

    final textAlign = align ?? TextAlign.left;

    final textOverflow =
        maxLines != null ? (overflow ?? TextOverflow.ellipsis) : null;
    List<TextSpan> getTexts() {
      List<TextSpan> list = [];
      for (var item in texts) {
        list.add(
          TextSpan(
            text: item.text,
            style: style.copyWith(
              color: item.color,
            ),
          ),
        );
      }
      return list;
    }

    return RichText(
      text: TextSpan(
        text: '',
        children: getTexts(),
      ),
      textAlign: textAlign,
      overflow: textOverflow ?? TextOverflow.clip,
      maxLines: maxLines,
    );
  }

  final List<HSpanText> texts;
  final TextStyleType styleType;
  final Color? color;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final double? fontSize;
  final TextAlign? align;
  final int? maxLines;
  final TextDecoration? textDecoration;
  final FontStyle? fontStyle;
  final TextOverflow? overflow;
  final double? height;
}

class HSpanText {
  const HSpanText({
    required this.text,
    required this.color,
  });
  final String text;
  final Color color;
}
