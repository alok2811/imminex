import 'package:get/get.dart';

import '../modules/user/bording/bindings/bording_binding.dart';
import '../modules/user/bording/views/bording_view.dart';
import '../modules/user/consultations/bindings/consulations_detail_binding.dart';
import '../modules/user/consultations/bindings/consultations_binding.dart';
import '../modules/user/consultations/views/consultations_detail_view.dart';
import '../modules/user/consultations/views/consultations_view.dart';
import '../modules/user/dashboard/bindings/dashboard_binding.dart';
import '../modules/user/dashboard/views/dashboard_view.dart';
import '../modules/user/home/bindings/home_binding.dart';
import '../modules/user/home/views/home_view.dart';
import '../modules/user/info/bindings/info_binding.dart';
import '../modules/user/info/views/info_view.dart';
import '../modules/user/login/bindings/login_binding.dart';
import '../modules/user/login/views/login_view.dart';
import '../modules/user/message/bindings/message_binding.dart';
import '../modules/user/message/views/message_view.dart';
import '../modules/user/more/bindings/more_binding.dart';
import '../modules/user/more/views/more_view.dart';
import '../modules/user/notification/bindings/notification_binding.dart';
import '../modules/user/notification/views/notification_view.dart';
import '../modules/user/register/bindings/register_binding.dart';
import '../modules/user/register/views/register_view.dart';
import '../modules/user/register/views/web/web_agent_register_view.dart';
import '../modules/user/splash/bindings/splash_binding.dart';
import '../modules/user/splash/views/splash_view.dart';
import '../modules/user/verifiactionPage/bindings/verifiaction_page_binding.dart';
import '../modules/user/verifiactionPage/views/verifiaction_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.BORDING,
      page: () => BordingView(),
      binding: BordingBinding(),
    ),
    GetPage(
      name: _Paths.VERIFIACTION_PAGE,
      page: () => VerifiactionPageView(),
      binding: VerifiactionPageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.WEB_AGENT_REGISTER_VIEW,
      page: () => WebAgentRegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.INFO,
      page: () => InfoView(),
      binding: InfoBinding(),
    ),
    GetPage(
      name: _Paths.MORE,
      page: () => MoreView(),
      binding: MoreBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGE,
      page: () => MessageView(),
      binding: MessageBinding(),
    ),
    GetPage(
      name: _Paths.CONSULTATIONS,
      page: () => ConsultationsView(),
      binding: ConsultationsBinding(),
    ),
    GetPage(
      name: _Paths.CONSULTATIONS_DETAIL,
      page: () => ConsultationsDetailView(),
      binding: ConsultationsDetailBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      binding: NotificationBinding(),
    ),
  ];
}
