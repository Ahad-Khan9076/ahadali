class Validators {
  static String? validateEmail(String? value) {
    if (value == null || !value.contains('@')) return 'Enter a valid email';
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.length < 6) return 'Password too short';
    return null;
  }
}
