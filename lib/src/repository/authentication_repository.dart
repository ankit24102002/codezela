 import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/dashboard.dart';
import 'package:login_flutter_app/src/repository/authentication_repository/exception/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
  //   user == null
  //       ? Get.offAll(() => WelcomeScreen())
  //       : Get.offAll(() => const Dashboard());
  }

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (credentials) async {
        await _auth.signInWithCredential(credentials);
      },
      codeSent: (verificationId, resendToken) {
        this.verificationId.value = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
        this.verificationId.value = verificationId;
      },
      verificationFailed: (e) {
        if (e.code == 'invaild-phone-number') {
          Get.snackbar('Error', 'The provided phone number is not valid');
        } else {
          Get.snackbar('Error', 'Something went wrong Try Again');
        }
      }, 
    );
  }

 Future<bool>  verifyOTP(String otp) async {
 var credentials=   await _auth.signInWithCredential(PhoneAuthProvider.credential(
        verificationId: verificationId.value, smsCode: otp));
      return  credentials.user!=null?true:false;
  }

  Future<String?> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const Dashboard())
          : Get.to(() => WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignInWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignInWithEmailAndPasswordFailure();
      print(' EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<String?> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

  Future<void> logout() async => await _auth.signOut();
}
