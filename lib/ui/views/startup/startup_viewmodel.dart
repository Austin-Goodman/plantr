import 'package:plantr/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:plantr/app/app.locator.dart';
import 'package:plantr/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _routerService = locator<RouterService>();
  final _authenticationService = locator<AuthenticationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    if (_authenticationService.userLoggedIn()) {
      _routerService.replaceWithTextReverseView();
    } else {
      _routerService.replaceWithLoginView();
    }
    //await _routerService.replaceWith(const CounterViewRoute());
  }
}
