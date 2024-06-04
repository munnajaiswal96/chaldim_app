import 'package:chaldim_app/authentication/authentication_repo.dart';
import 'package:chaldim_app/authentication/user_repository.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  static ProfileController get instance=>Get.find();

  final _authRepo=Get.put(AuthenticationRepo());
  final _userRepo=Get.put(UserRepo());
  //get user email nad pass to userrepository to fetch user record.

  getUserData(){
    final email=_authRepo.firebaseUser.value?.email;
    if(email!=null){
      return _userRepo.getUserDetails(email);
    }else{
      Get.snackbar('Error', 'Login to continue');
    }
  }
}