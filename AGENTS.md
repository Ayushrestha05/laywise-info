# AGENTS.md

## What This Is

Jaspr static-site for LayWise poultry farm management app. **Not Flutter.** Dart web framework with server-side pre-rendering and client hydration. Deployed to Vercel.

## Commands

```bash
dart pub get              # install deps
jaspr serve               # dev server at localhost:8080
jaspr build               # output to build/jaspr/
dart analyze              # lint (0 errors)
```

## Architecture

- **Rendering:** Static mode (`jaspr: mode: static` in pubspec.yaml). Server pre-renders HTML; client hydrates interactive parts.
- **Entry points:** `lib/main.server.dart` (SSR/pre-render), `lib/main.client.dart` (browser hydration). Don't edit `*.options.dart` — they're generated.
- **Routing:** `lib/app.dart` — `jaspr_router` with `Route()` declarations.
- **Styling:** CSS-in-Dart via `@css` annotations on top-level getters. Global styles in `lib/constants/theme.dart`.

## Routes

- `/` — Landing page with links to legal pages
- `/privacy-policy` — Privacy Policy
- `/terms-and-conditions` — Terms and Conditions

## Key Conventions

- `dart analyze` runs clean (0 errors).
- `@css` annotations MUST be on public top-level getters (not private classes/members).
- Pages are in `lib/pages/`. Shared nav is inlined in each page.
- Assets go in `web/` directory.
