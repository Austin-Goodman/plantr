import 'package:plantr/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:plantr/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:plantr/ui/views/home/home_view.dart';
import 'package:plantr/ui/views/startup/startup_view.dart';
import 'package:plantr/ui/views/unknown/unknown_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:plantr/ui/views/counter/counter_view.dart';
import 'package:plantr/ui/views/login/login_view.dart';
import 'package:plantr/services/authentication_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    CustomRoute(page: StartupView, initial: true),
    CustomRoute(page: HomeView),
    MaterialRoute(page: CounterView),
    MaterialRoute(page: LoginView),
// @stacked-route

    CustomRoute(page: UnknownView, path: '/404'),

    /// When none of the above routes match, redirect to UnknownView
    RedirectRoute(path: '*', redirectTo: '/404'),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: RouterService),
    LazySingleton(classType: AuthenticationService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
