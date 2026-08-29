import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class TermsAndConditionsPage extends StatelessComponent {
  const TermsAndConditionsPage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'page', [
      _NavBar(),
      header(classes: 'page-header', [
        div(classes: 'container', [
          h1([.text('Terms and Conditions')]),
          p([.text('LayWise - Poultry Farm Management')]),
        ]),
      ]),
      div(classes: 'container', [
        div(classes: 'meta', [
          span([.text('Effective Date: August 28, 2026')]),
          span([.text('App Name: LayWise')]),
        ]),
        _section('Acceptance of Terms', [
          p([
            .text(
                'By downloading, installing, or using LayWise ("the App"), you agree to be bound by these Terms and Conditions. If you do not agree to these terms, do not use the App. The App is not intended for use by individuals under the age of 13, and by using the App you confirm that you meet this requirement. Please also review our '),
            a(href: '/privacy-policy', [.text('Privacy Policy')]),
            .text(', which explains how data you enter into the App is handled.'),
          ]),
        ]),
        _section('Description of Service', [
          p([
            .text(
                'LayWise is a poultry farm management application that allows you to:'),
          ]),
          ul([
            .element(tag: 'li', children: [.text('Manage farm sheds and bird houses')]),
            .element(tag: 'li', children: [.text('Track egg production and flock daily logs')]),
            .element(tag: 'li', children: [.text('Record sales and expenses')]),
            .element(tag: 'li', children: [.text('Manage inventory and feed production')]),
            .element(
                tag: 'li', children: [.text('Track employee information and salary payments')]),
            .element(
                tag: 'li',
                children: [
                  .text(
                      'Generate reports and analytics based on the data you enter into the App'),
                ]),
          ]),
          p([
            .text(
                'Note: "Reports and analytics" refers to summaries and insights generated from your own farm data within the App (for example, production or sales totals). It does not involve us collecting or analyzing data about your use of the App — see our '),
            a(href: '/privacy-policy', [.text('Privacy Policy')]),
            .text(' for details.'),
          ]),
        ]),
        _section('Data Responsibility', [
          p([
            strong([.text('You are solely responsible for the data you enter into the App.')]),
            .text(' Since all data is stored locally on your device:'),
          ]),
          ul([
            .element(tag: 'li', children: [.text('We do not have access to your data')]),
            .element(tag: 'li', children: [.text('We cannot recover lost data')]),
            .element(tag: 'li', children: [.text('You are responsible for backing up your data')]),
            .element(
                tag: 'li', children: [.text('You are responsible for the accuracy of the data you enter')]),
          ]),
        ]),
        _section('Intellectual Property', [
          p([
            .text(
                'The App, including its design, code, and features, is the intellectual property of the developers. You are granted a limited, non-exclusive license to use the App for its intended purpose.'),
          ]),
        ]),
        _section('Prohibited Uses', [
          p([.text('You agree not to:')]),
          ul([
            .element(tag: 'li', children: [.text('Use the App for any illegal purpose')]),
            .element(
                tag: 'li',
                children: [
                  .text('Attempt to reverse engineer, decompile, or disassemble the App'),
                ]),
            .element(
                tag: 'li', children: [.text('Remove or modify any copyright notices or labels')]),
            .element(
                tag: 'li', children: [.text('Distribute or sublicense the App to third parties')]),
            .element(
                tag: 'li',
                children: [.text('Use the App in any way that could damage or impair the App')]),
          ]),
        ]),
        _section('Disclaimer of Warranties', [
          p([
            .text(
                'The App is provided "as is" without warranties of any kind, either express or implied. We do not warrant that:'),
          ]),
          ul([
            .element(tag: 'li', children: [.text('The App will be uninterrupted or error-free')]),
            .element(
                tag: 'li', children: [.text('The App will meet your specific requirements')]),
            .element(
                tag: 'li', children: [.text('The App will be compatible with all devices')]),
            .element(
                tag: 'li',
                children: [.text('Any data entered will be accurately stored or retrievable')]),
          ]),
        ]),
        _section('Limitation of Liability', [
          p([
            .text(
                'To the maximum extent permitted by law, we shall not be liable for any indirect, incidental, special, consequential, or punitive damages, or any loss of profits or revenues, whether incurred directly or indirectly, or any loss of data, use, goodwill, or other intangible losses resulting from:'),
          ]),
          ul([
            .element(tag: 'li', children: [.text('Your use or inability to use the App')]),
            .element(
                tag: 'li',
                children: [.text('Any unauthorized access to or use of our servers')]),
            .element(
                tag: 'li',
                children: [
                  .text('Any interruption or cessation of transmission to or from the App'),
                ]),
            .element(
                tag: 'li',
                children: [
                  .text('Any bugs, viruses, or the like that may be transmitted to or through the App'),
                ]),
            .element(tag: 'li', children: [.text('Any errors or omissions in any content')]),
          ]),
        ]),
        _section('Indemnification', [
          p([
            .text(
                'You agree to indemnify, defend, and hold harmless the developers from any claims, losses, damages, liabilities, costs, and expenses (including reasonable attorneys\' fees) arising from:'),
          ]),
          ul([
            .element(tag: 'li', children: [.text('Your use of the App')]),
            .element(tag: 'li', children: [.text('Your violation of these Terms')]),
            .element(
                tag: 'li', children: [.text('Your violation of any third-party rights')]),
            .element(tag: 'li', children: [.text('Any data you enter into the App')]),
          ]),
        ]),
        _section('Third-Party Services', [
          p([
            .text(
                'The App may use third-party libraries and services. Your use of such third-party services is subject to their respective terms and conditions.'),
          ]),
        ]),
        _section('Updates and Changes', [
          p([
            .text(
                'We reserve the right to update or modify the App and these Terms at any time. Continued use of the App after any changes constitutes acceptance of the new Terms.'),
          ]),
        ]),
        _section('Termination', [
          p([
            .text(
                'We may terminate or suspend your access to the App at any time, without prior notice or liability, for any reason whatsoever.'),
          ]),
        ]),
        _section('Governing Law', [
          p([
            .text(
                'These Terms shall be governed by and construed in accordance with the laws of Nepal, without regard to its conflict of law provisions.'),
          ]),
        ]),
        _section('Severability', [
          p([
            .text(
                'If any provision of these Terms is found to be unenforceable or invalid, that provision shall be limited or eliminated to the minimum extent necessary so that these Terms shall otherwise remain in full force and effect.'),
          ]),
        ]),
        _section('Entire Agreement', [
          p([
            .text('These Terms, together with our '),
            a(href: '/privacy-policy', [.text('Privacy Policy')]),
            .text(
                ', constitute the entire agreement between you and us regarding the use of the App and supersede all prior agreements and understandings.'),
          ]),
        ]),
        _section('Changes to Terms', [
          p([
            .text(
                'We reserve the right to update these Terms at any time. We will notify you of any changes by posting the new Terms on this page and updating the "Effective Date" at the top.'),
          ]),
        ]),
        _section('Contact Us', [
          p([.text('If you have any questions about these Terms, please contact us at:')]),
          ul(classes: 'contact-list', [
            li([
              strong([.text('Email: ')]),
              a(href: 'mailto:brainoutofbounds@gmail.com', [.text('brainoutofbounds@gmail.com')]),
            ]),
            li([
              strong([.text('GitHub Issues: ')]),
              a(
                href: 'https://github.com/Ayushrestha05/laywise-info',
                attributes: {'target': '_blank'},
                [.text('https://github.com/Ayushrestha05/laywise-info')],
              ),
            ]),
          ]),
        ]),
        div(classes: 'related', [
          h2([.text('Related Documents')]),
          p([
            .text('These Terms should be read alongside our '),
            a(href: '/privacy-policy', [.text('Privacy Policy')]),
            .text(', which explains how data you enter into the App is handled.'),
          ]),
        ]),
      ]),
      footer(classes: 'site-footer', [
        p([.text('\u00a9 2026 LayWise. All rights reserved.')]),
      ]),
    ]);
  }

  Component _section(String title, List<Component> children) {
    return div(classes: 'section', [
      h2([.text(title)]),
      ...children,
    ]);
  }
}

class _NavBar extends StatelessComponent {
  const _NavBar();

  @override
  Component build(BuildContext context) {
    return nav(classes: 'nav', [
      div(classes: 'container nav-inner', [
        ul(classes: 'nav-list', [
          li([
            a(href: '/privacy-policy', classes: 'nav-link', [.text('Privacy Policy')]),
          ]),
          li([
            a(
                href: '/terms-and-conditions',
                classes: 'nav-link active',
                [.text('Terms and Conditions')]),
          ]),
        ]),
      ]),
    ]);
  }
}

@css
List<StyleRule> get termsAndConditionsStyles => [
      css('.page', [
        css('&').styles(minHeight: 100.vh),
      ]),
      css('.container', [
        css('&').styles(
          maxWidth: 800.px,
          margin: Margin.all(Unit.auto),
          padding: Padding.symmetric(horizontal: 2.rem),
        ),
      ]),
      css('.page-header', [
        css('&').styles(
          backgroundColor: Color('#1a5276'),
          color: Colors.white,
          padding: Padding.only(top: 2.rem, bottom: 2.rem),
          margin: Margin.only(bottom: 2.rem),
        ),
        css('.container').styles(textAlign: .center),
        css('h1').styles(
          fontSize: 2.rem,
          fontWeight: .bold,
          margin: Margin.only(bottom: 0.5.rem),
        ),
        css('p').styles(opacity: 0.9),
      ]),
      css('.meta', [
        css('&').styles(
          display: .flex,
          gap: Gap.all(2.rem),
          margin: Margin.only(bottom: 2.rem),
          fontSize: 0.9.rem,
          color: Color('#666666'),
          flexWrap: .wrap,
        ),
        css('span').styles(
          padding: Padding.symmetric(vertical: 0.3.rem, horizontal: 0.8.rem),
          backgroundColor: Color('#e8e8e8'),
          radius: BorderRadius.circular(4.px),
        ),
      ]),
      css('.section', [
        css('&').styles(
          backgroundColor: Colors.white,
          radius: BorderRadius.circular(8.px),
          padding: Padding.all(2.rem),
          margin: Margin.only(bottom: 1.5.rem),
          shadow: BoxShadow(
            offsetX: 0.px,
            offsetY: 1.px,
            blur: 3.px,
            color: Color('#0000001a'),
          ),
        ),
      ]),
      css('.contact-list', [
        css('&').styles(
          listStyle: .none,
          margin: Margin.all(Unit.zero),
          padding: Padding.all(Unit.zero),
        ),
      ]),
      css('.related', [
        css('&').styles(
          backgroundColor: Color('#eaf2f8'),
          border: Border.only(
            left: BorderSide.solid(color: Color('#2980b9'), width: 4.px),
          ),
        ),
      ]),
      css('.site-footer', [
        css('&').styles(
          textAlign: .center,
          padding: Padding.symmetric(vertical: 2.rem),
          color: Color('#666666'),
          fontSize: 0.85.rem,
        ),
      ]),
      css('.nav', [
        css('&').styles(
          backgroundColor: Colors.white,
          padding: Padding.only(top: 1.rem, bottom: 1.rem),
          border: Border.only(bottom: BorderSide.solid(color: Color('#e8e8e8'))),
          margin: Margin.only(bottom: 1.rem),
        ),
      ]),
      css('.nav-inner', [
        css('&').styles(
          maxWidth: 800.px,
          margin: Margin.all(Unit.auto),
          padding: Padding.symmetric(horizontal: 2.rem),
        ),
      ]),
      css('.nav-list', [
        css('&').styles(
          display: .flex,
          gap: Gap.all(2.rem),
          justifyContent: .center,
          listStyle: .none,
          margin: Margin.all(Unit.zero),
          padding: Padding.all(Unit.zero),
        ),
      ]),
      css('.nav-link', [
        css('&').styles(
          fontWeight: .w500,
          color: Color('#333333'),
          textDecoration: TextDecoration(line: .none),
        ),
        css('&:hover').styles(color: Color('#1a5276')),
        css('&.active').styles(
          color: Color('#1a5276'),
          border: Border.only(
              bottom: BorderSide.solid(color: Color('#1a5276'), width: 2.px)),
          padding: Padding.only(bottom: 2.px),
        ),
      ]),
    ];
