import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
// import 'package:stackedpractice/services/auth_services/doctor_auth_service.dart';
import 'package:stackedpractice/services/auth_services/patient_auth_service.dart';

import '../../app/app.locator.dart';
import '../../app/app.router.dart';

class RegisterViewModel extends BaseViewModel {
  NavigationService navigationService = locator<NavigationService>();
  // DoctorAuthServices authService = locator<DoctorAuthServices>();
  PatientAuthService authService = locator<PatientAuthService>();

  void navigateToLoginView() {
    navigationService.navigateTo(Routes.loginView);
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void signUp() async {
    try {
      await authService.createPatientProfile(
        email: emailController.text,
        password: passwordController.text,
      );
      navigationService.navigateTo(Routes.loginView);
    } catch (e) {
      print(e);
    }
  }
}
