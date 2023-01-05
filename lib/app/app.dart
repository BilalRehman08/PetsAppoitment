import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedpractice/views/home/home_view.dart';
import 'package:stackedpractice/views/register/register_view.dart';

import '../services/auth_services/auth_service.dart';
import '../services/auth_services/doctor_auth_service.dart';
import '../services/auth_services/patient_auth_service.dart';
import '../views/login/login_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: RegisterView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: HomeView),
  ],
  dependencies: [
    // Lazy singletons
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: DoctorAuthServices),
    LazySingleton(classType: PatientAuthService),
  ],
)
class AppSetup {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
