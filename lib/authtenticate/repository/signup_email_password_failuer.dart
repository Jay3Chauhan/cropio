class SignupwithEmailAndPasswordFailure {
  late final String massage;
  SignupwithEmailAndPasswordFailure(
      [this.massage = "an   Unknown Error occored"]);
  factory SignupwithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case '':
        return SignupwithEmailAndPasswordFailure('');
      default:
        return SignupwithEmailAndPasswordFailure();
    }
  }
}
