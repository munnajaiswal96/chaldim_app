import 'package:chaldim_app/dashboard/bottom_title_page/home_page.dart';
import 'package:chaldim_app/authentication/signup_email_password_failure.dart';
import 'package:chaldim_app/pages/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
//import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationRepo extends GetxController{
  static AuthenticationRepo get instance=>Get.find();

  //variable
  final _auth=FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId=''.obs;

  @override
  void onReady(){
    firebaseUser= Rx<User?> (_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser,_setInitialScreen);
  }

  _setInitialScreen(User? user){
    user==null? Get.offAll(()=>const Welcomepage()):Get.offAll(()=>const HomePage());

  }

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (credential) async {
        await _auth.signInWithCredential(credential);
      },

      verificationFailed: (e){
        if(e.code=='invalid-phone-number'){
          Get.snackbar('Error', 'The provided phone number is not valid');
        }else{
          Get.snackbar('Error', 'Something went wrong. Try again');
        }
      },

      codeSent: (verificationId,resendToken){
        this.verificationId.value=verificationId;
      },

      codeAutoRetrievalTimeout: (verficationId){
        this.verificationId=verificationId;
      },
    );
  }

  Future<bool> verifyOTP(String otp) async{
    var credential= await _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationId.value, smsCode: otp));
    return credential.user!=null?true:false;
  }

  Future<void> createUserWithEmailAndPassword(String email,String password) async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value!=null?Get.offAll(()=>const HomePage()):Get.to(()=>Welcomepage());
    } on FirebaseAuthException catch(e){
      //e.code
      final ex=SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION -${ex.message}');
      throw ex;
    }
    catch(_){
      final ex=SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION-${ex.message}');
      throw ex;
    }
  }
  Future<void> loginUserWithEmailAndPassword(String email,String password) async{
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      //e.code\
      print('');
    }
    catch(_){}
  }

  // Future<void> sendEmailVerification() async{
  //   try {
  //     await _auth.currentUser?.sendEmailVerification();
  //   } on FirebaseAuthException catch(e){
  //     final ex=TExceptions.fromCode(e.code);
  //     throw ex.message;
  //   }catch(_){
  //     const ex=TExceptions();
  //     throw ex.message;
  //   }
  // }

  // Future<UserCredential> signInWithGoogle() async {



  //   // Trigger the authentication flow
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //
  //   // Obtain the auth details from the request
  //   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  //
  //   // Create a new credential
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );
  //
  //   // Once signed in, return the UserCredential
  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  // }



  Future<void> logout() async=> await _auth.signOut();
}