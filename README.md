![Coinbase DS Banner](./assets/TcBase.svg)

This project is an implementation of the Coinbase Mobile App Design System built with **Flutter**, following industry best practices such as **Atomic Design**, **Design Tokens**, and **Component-Based architecture**.

---

### 1. Install

This is a sample project. You can clone the repository and add the `coinbase_ds` folder to your main Flutter project as a **local package**.

**a) Add to `pubspec.yaml` in your project:**

```yaml
dependencies:
  coinbase_ds:
    path: path/to/coinbase_ds
```

**b) run the command:**

```bash
flutter pub get
```

---

### 2. Theme configuration and usage examples

To apply the Design System globally, wrap your `MaterialApp` with the provided theme:

```dart
import 'package:coinbase_ds/coinbase_ds.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coinbase Clone App',
      theme: AppTheme.light, //Aplly themme
      home: const DsShowcasePage(), // Examples
    );
  }
}
```

---

### 3. The problem

Building mobile interfaces without a shared visual contract between design and development leads to inconsistency, rework, and slow iteration.

This project solves that by bridging a **Figma Design System** directly to a **Flutter implementation**. Every visual decision — from the `primary100` blue to the `AppSpacing.m` padding — originates in Figma and is mapped 1:1 into code as design tokens. Components like `DsButton`, `DsCryptoCard`, and `DsBottomNavigationBar` are built once following Atomic Design principles and reused across all screens, ensuring the UI always reflects the source of truth defined by the designer.

<p align="center">
  <img src="./assets/Cbase.svg" width="75%"/>
</p>
---

### 4. How to Improve this project

- Add more components from the original Design System

- Implement Dark Mode

- Improve documentation and examples

---

### Ref:

[Coin Base Mobile App Clone & Design System - Figma File](https://www.figma.com/design/sqcGLm1aX88GYVI8Ao1YqT/Coin-Base-Mobile-App-Clone---Design-System--Community-?node-id=102-3803&t=uLZvfvN7fez0V2GM-4)
