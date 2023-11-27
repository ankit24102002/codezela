class SignInWithEmailAndPasswordFailure {
  final String message;
  const SignInWithEmailAndPasswordFailure(
      [this.message = "An Unknown Error Occured"]);
  factory SignInWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignInWithEmailAndPasswordFailure('Please enter a strong password');
      case 'invalid-email':
        return const SignInWithEmailAndPasswordFailure('Email is not valid or badly formed');
      case 'email-already-in-use':
        return const SignInWithEmailAndPasswordFailure('AN accont already exist for email');
      case 'operation-not-allowed':
        return const SignInWithEmailAndPasswordFailure('Operation is not allowed .Please contact support');
      case 'user-disabled':
        return const SignInWithEmailAndPasswordFailure('This user has been disabled .Please contact support for help');
      default:
        return const SignInWithEmailAndPasswordFailure();
    }
  }
}
