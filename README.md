# 🔄 Provider State Management Demo (Flutter)

A small **Flutter** app showing how to share state across screens with the **Provider** package, using more than one provider at once.

## What it shows

- **`MultiProvider`** registers two independent providers at the root of the app:
  - `CartProvider` holds the cart quantity and has `addCart()` and `removeFromCart()`.
  - `UserProvider` holds the user's name and has `updatedName()`.
- **`Consumer2`** listens to both providers in one widget and rebuilds when either changes.
- **Shared state across screens.** Changes made on the Cart screen show up straight away in the badge on the Home screen.
- **Cart badge** in the app bar, using the `badges` package.
- **Floating action buttons** to add and remove items.

```dart
Consumer2<CartProvider, UserProvider>(
  builder: (context, cart, user, child) => Text(
    '${user.name}, you have ${cart.quantity} products in your cart',
  ),
);
```

## Tech stack

| | |
|---|---|
| Framework | Flutter (Dart, null-safe) |
| State management | Provider 6 (`ChangeNotifier`, `MultiProvider`, `Consumer2`) |
| UI | `badges` |

## Project structure

```
lib/
├── main.dart          # MultiProvider setup
├── providers/         # cart.dart, user.dart
└── screens/           # home.dart, cart.dart
```

## Getting started

```bash
git clone https://github.com/nainezz/providerTest.git
cd providerTest
flutter pub get
flutter run
```

Requires Dart `>=2.18.0 <3.0.0`.

## Author

**Nainezz**, a software engineer in Nairobi, Kenya · [GitHub](https://github.com/nainezz)
