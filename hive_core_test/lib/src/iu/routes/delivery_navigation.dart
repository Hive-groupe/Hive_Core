import '../pages/dialy_screen/dialy_screen.dart';

abstract class DeliveryRoutes {
  static const String route_screen = "/";
  static const String route_daily_screen = "/route_dialy_screen";
}

abstract class DeliveryPages {
  static final pages = {
    DeliveryRoutes.route_daily_screen: (context) => const DialyScreen(),
  };
}
