import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stackedpractice/app/app.locator.dart';
import 'package:stackedpractice/services/auth_services/auth_service.dart';

class DoctorAuthServices {
  AuthService authService = locator<AuthService>();
  FirebaseFirestore firestoreInstacne = FirebaseFirestore.instance;

  createDoctorProfile({required String email, required String password}) async {
    try {
      UserCredential result = await authService.signUpWithEmailAndPassword(
          email: email, password: password);
      if (result.user != null) {
        firestoreInstacne.collection('doctor').doc(result.user!.uid).set({
          'name': 'Doctor Name',
          'email': result.user!.email,
          'phone': 'Doctor Phone',
          'address': 'Doctor Address',
          'speciality': 'Doctor Speciality',
          'profileImage': 'Doctor Profile Image',
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
