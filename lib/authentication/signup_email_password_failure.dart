class SignUpWithEmailAndPasswordFailure{
  final String message;
  SignUpWithEmailAndPasswordFailure([this.message="An Unknown error occured."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'weak-password':
        return SignUpWithEmailAndPasswordFailure('Please enter a strong password');
      case 'invalid-email':
        return SignUpWithEmailAndPasswordFailure('Email is not valid or badly formatted');
      case 'email-already-in-use':
        return SignUpWithEmailAndPasswordFailure('operation isn\'t allowed. please contact support.');
      case 'user-disabled':
        return SignUpWithEmailAndPasswordFailure('This user has beed disabled. Please contact support for help.');

      default:
        return SignUpWithEmailAndPasswordFailure();
    }
  }
}