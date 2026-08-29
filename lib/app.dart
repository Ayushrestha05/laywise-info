import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'pages/privacy_policy_page.dart';
import 'pages/terms_and_conditions_page.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return Router(
      routes: [
        Route(
          path: '/',
          builder: (context, state) => _LandingPage(),
        ),
        Route(
          path: '/privacy-policy',
          builder: (context, state) => PrivacyPolicyPage(),
        ),
        Route(
          path: '/terms-and-conditions',
          builder: (context, state) => TermsAndConditionsPage(),
        ),
      ],
      errorBuilder: (context, state) => _NotFoundPage(),
    );
  }
}

class _LandingPage extends StatelessComponent {
  const _LandingPage();

  @override
  Component build(BuildContext context) {
    return div(classes: 'container', [
      header(classes: 'hero', [
        div(classes: 'hero-content', [
          h1([.text('LayWise')]),
          p([.text('Poultry Farm Management')]),
        ]),
      ]),
      div(classes: 'links', [
        a(href: '/privacy-policy', classes: 'card', [
          .text('Privacy Policy'),
        ]),
        a(href: '/terms-and-conditions', classes: 'card', [
          .text('Terms and Conditions'),
        ]),
      ]),
      footer(classes: 'site-footer', [
        p([.text('\u00a9 2026 LayWise. All rights reserved.')]),
      ]),
    ]);
  }
}

class _NotFoundPage extends StatelessComponent {
  const _NotFoundPage();

  @override
  Component build(BuildContext context) {
    return div(classes: 'container', [
      h1([.text('404 - Page Not Found')]),
      p([.text('The page you are looking for does not exist.')]),
      a(href: '/', [.text('Go Home')]),
    ]);
  }
}

@css
List<StyleRule> get landingStyles => [
      css('.container', [
        css('&').styles(
          maxWidth: 800.px,
          margin: Margin.all(Unit.auto),
          padding: Padding.all(2.rem),
        ),
      ]),
      css('.hero', [
        css('&').styles(
          backgroundColor: Color('#1a5276'),
          color: Colors.white,
          padding: Padding.symmetric(vertical: 4.rem, horizontal: 2.rem),
          margin: Margin.only(bottom: 2.rem),
          radius: BorderRadius.circular(8.px),
        ),
      ]),
      css('.hero-content', [
        css('&').styles(textAlign: .center),
        css('h1').styles(
          fontSize: 2.5.rem,
          fontWeight: .bold,
          margin: Margin.only(bottom: 0.5.rem),
        ),
        css('p').styles(
          fontSize: 1.2.rem,
          opacity: 0.9,
        ),
      ]),
      css('.links', [
        css('&').styles(
          display: .flex,
          gap: Gap.all(1.5.rem),
          justifyContent: .center,
          margin: Margin.only(bottom: 3.rem),
        ),
      ]),
      css('.card', [
        css('&').styles(
          display: .block,
          padding: Padding.symmetric(vertical: 1.5.rem, horizontal: 2.5.rem),
          backgroundColor: Colors.white,
          radius: BorderRadius.circular(8.px),
          shadow: BoxShadow(
            offsetX: 0.px,
            offsetY: 2.px,
            blur: 8.px,
            color: Color('#0000001a'),
          ),
          color: Color('#1a5276'),
          fontWeight: .w600,
          fontSize: 1.1.rem,
          textDecoration: TextDecoration(line: .none),
        ),
        css('&:hover').styles(
          transform: .translate(y: (-2).px),
          shadow: BoxShadow(
            offsetX: 0.px,
            offsetY: 4.px,
            blur: 12.px,
            color: Color('#00000026'),
          ),
        ),
      ]),
      css('.site-footer', [
        css('&').styles(
          textAlign: .center,
          color: Color('#666666'),
          fontSize: 0.85.rem,
          padding: Padding.only(top: 2.rem),
        ),
      ]),
    ];
