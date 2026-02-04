import 'package:coinbase/src/routes/app_routes.dart';

abstract class SplashNavigator {
  void goTo(String route);
}

class SplashController {
  //
  final SplashNavigator navigator;

  SplashController(this.navigator);

  Future<void> start() async {
    await Future.wait([
      _loadAppConfig(), //variaveis de ambiente, remote flags
      _checkUserSession(), //valida logs
      _minimumBrandingTime(), //tempo de tela na logo
    ]);
    navigator.goTo(AppRoutes.onboarding);
  }

  Future<void> _loadAppConfig() async {
    await Future.delayed(const Duration(microseconds: 300));
  }

  Future<void> _checkUserSession() async {
    await Future.delayed(const Duration(microseconds: 300));
  }

  Future<void> _minimumBrandingTime() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
