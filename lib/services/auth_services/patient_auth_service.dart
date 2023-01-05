import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stackedpractice/app/app.locator.dart';
import 'package:stackedpractice/services/auth_services/auth_service.dart';

class PatientAuthService {
  FirebaseFirestore firestoreInstacne = FirebaseFirestore.instance;
  AuthService authService = locator<AuthService>();
  createPatientProfile(
      {required String email, required String password}) async {
    try {
      UserCredential result = await authService.signUpWithEmailAndPassword(
          email: email, password: password);
      if (result.user != null) {
        firestoreInstacne.collection('patient').doc(result.user!.uid).set({
          'name': 'Patient Name',
          'email': result.user!.email,
          'phone': 'Patient Phone',
          'address': 'Patient Address',
          'profileImage': 'Patient Profile Image',
          'uid': result.user!.uid,
          'createdAt': DateTime.now(),
          'updatedAt': DateTime.now(),
        });
      }
    } catch (e) {
      print(e);
    }
  }
}
