class ApiEndpoitns {
  static const String baseUrl = "https://studentucas.awamr.com/public/api";
  static var customerEndpoint = _CustomerEndpoints();
  static var headers = {"Content-Type": "application/json"};
}

class _CustomerEndpoints {
  final String customerLogin = "/auth/login/user";
  final String customerSignUp = "/auth/register/user";
  final String allWorks = "/auth/register/user";
}

// class _ProviderEndpoints {
//   final String customerLogin = "/auth/login/user";
//   final String customerSignUp = "/auth/register/user";
//   final String allWorks = "/auth/register/user";
// }
