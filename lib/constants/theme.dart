import 'package:jaspr/dom.dart';

@css
List<StyleRule> get globalStyles => [
      css('body', [
        css('&').styles(
          margin: Margin.all(Unit.zero),
          fontFamily: .list([
            FontFamily('-apple-system'),
            FontFamily('BlinkMacSystemFont'),
            FontFamily('Segoe UI'),
            FontFamily('Roboto'),
            FontFamilies.sansSerif,
          ]),
          lineHeight: 1.6.em,
          color: Color('#333333'),
          backgroundColor: Color('#f5f5f5'),
        ),
      ]),
      css('a', [
        css('&').styles(
          color: Color('#2980b9'),
          textDecoration: TextDecoration(line: .none),
        ),
        css('&:hover').styles(
          textDecoration: TextDecoration(line: .underline),
        ),
      ]),
      css('h2', [
        css('&').styles(
          color: Color('#1a5276'),
          margin: Margin.only(bottom: 1.rem),
          padding: Padding.only(bottom: 0.5.rem),
          border: Border.only(bottom: BorderSide.solid(color: Color('#e8e8e8'))),
        ),
      ]),
      css('p', [
        css('&').styles(margin: Margin.only(bottom: 1.rem)),
      ]),
      css('ul, ol', [
        css('&').styles(
          margin: Margin.symmetric(vertical: 0.5.rem),
          padding: Padding.only(left: 1.5.rem),
        ),
      ]),
      css('li', [
        css('&').styles(margin: Margin.only(bottom: 0.5.rem)),
      ]),
    ];
