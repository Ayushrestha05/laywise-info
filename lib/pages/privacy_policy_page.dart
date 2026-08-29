import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class PrivacyPolicyPage extends StatelessComponent {
  const PrivacyPolicyPage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'page', [
      nav(classes: 'nav', [
        div(classes: 'container nav-inner', [
          ul(classes: 'nav-list', [
            li([
              a(href: '/privacy-policy', classes: 'nav-link active', [.text('Privacy Policy')]),
            ]),
            li([
              a(href: '/terms-and-conditions', classes: 'nav-link', [.text('Terms and Conditions')]),
            ]),
          ]),
        ]),
      ]),
      header(classes: 'page-header', [
        div(classes: 'container', [
          h1([.text('Privacy Policy')]),
          p([.text('LayWise - Poultry Farm Management')]),
        ]),
      ]),
      div(classes: 'container', [
        div(classes: 'meta', [
          span([.text('Effective Date: August 28, 2026')]),
          span([.text('App Name: LayWise')]),
        ]),
        _section('Introduction', [
          p([
            .text(
                'LayWise ("we", "our", or "the app") is a poultry farm management application. This Privacy Policy explains how we handle data when you use our application.'),
          ]),
        ]),
        _section('Data Storage', [
          p([
            strong([.text('All data is stored locally on your device.')]),
            .text(
                ' LayWise does not transmit, collect, or share any data with external servers, third parties, or cloud services. Your data remains entirely on your device.'),
          ]),
        ]),
        _section('Data Collected', [
          p([.text('The app allows you to store the following types of information locally:')]),
          ul([
            _li('Farm Information:', ' Shed/bird house names and capacities'),
            _li('Employee Data:', ' Names, phone numbers, roles, salaries, and join dates'),
            _li('Customer Data:', ' Buyer names, phone numbers, and addresses'),
            _li('Operational Data:', ' Egg production logs, flock daily logs, bird transfers'),
            _li('Financial Data:', ' Sales records, expenses, bills, salary payments'),
            _li('Inventory Data:', ' Items, feed production, and inventory ledger entries'),
          ]),
        ]),
        _section('Data Usage', [
          p([
            .text(
                'All data you enter is used solely for the functionality of the app on your device. We do not:'),
          ]),
          ul([
            .element(tag: 'li', children: [.text('Collect analytics or usage data')]),
            .element(tag: 'li', children: [.text('Track your activity')]),
            .element(tag: 'li', children: [.text('Use cookies or tracking technologies')]),
            .element(tag: 'li', children: [.text('Send data to remote servers')]),
            .element(tag: 'li', children: [.text('Access your data remotely')]),
          ]),
          p([
            .text('The "reports and analytics" features described in our '),
            a(href: '/terms-and-conditions', [.text('Terms and Conditions')]),
            .text(
                ' refer only to in-app summaries generated from the farm data you enter (e.g., production or sales totals). They do not involve us collecting, viewing, or analyzing your usage of the app itself.'),
          ]),
        ]),
        _section('Data Sharing', [
          p([
            .text(
                'We do not share, sell, or distribute any of your data to third parties. Since all data is stored locally on your device, no data leaves your device through our application.'),
          ]),
        ]),
        _section('Data Security', [
          p([
            .text(
                'Because your data — including employee salaries and customer contact details — is stored only on your device, its security depends significantly on the security of that device. We recommend:'),
          ]),
          ul([
            .element(
                tag: 'li', children: [.text("Keeping your device's operating system up to date")]),
            .element(
                tag: 'li',
                children: [.text('Using a device passcode, PIN, or biometric lock')]),
            .element(
                tag: 'li',
                children: [
                  .text("Enabling your device's built-in storage/disk encryption where available"),
                ]),
          ]),
          p([
            .text(
                'Where supported by your device\'s operating system, the app uses SQLite database encryption. We do not have the ability to access, recover, or restore your data if your device is lost, damaged, reset, or if the app\'s local data is otherwise deleted.'),
          ]),
        ]),
        _section("Children's Privacy", [
          p([
            .text(
                'LayWise is not directed at children under the age of 13. We do not knowingly collect personal information from children.'),
          ]),
        ]),
        _section('Changes to This Policy', [
          p([
            .text(
                'We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page and updating the "Effective Date" at the top.'),
          ]),
        ]),
        _section('Contact Us', [
          p([.text('If you have any questions about this Privacy Policy, please contact us at:')]),
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
        _section('Your Rights', [
          p([
            .text(
                'Since all data is stored locally on your device, you have full control over your data. You can:'),
          ]),
          ul([
            .element(tag: 'li', children: [.text('Access all your data through the app')]),
            .element(
                tag: 'li', children: [.text('Export your data (if export functionality is available)')]),
            .element(
                tag: 'li',
                children: [.text("Delete your data by clearing the app's data or uninstalling the app")]),
            .element(
                tag: 'li',
                children: [
                  .text(
                      'Request information about what data is stored (all data is visible within the app)'),
                ]),
          ]),
        ]),
        div(classes: 'related', [
          h2([.text('Related Documents')]),
          p([
            .text('This Privacy Policy should be read alongside our '),
            a(href: '/terms-and-conditions', [.text('Terms and Conditions')]),
            .text(', which govern your use of the App.'),
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

  Component _li(String bold, String rest) {
    return li([
      strong([.text(bold)]),
      .text(rest),
    ]);
  }
}

@css
List<StyleRule> get privacyPolicyStyles => [
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
