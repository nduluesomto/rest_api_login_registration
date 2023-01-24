class ApiEndPoints {
  static final String baseUrl = 'http://restapi.adequateshop.com/api/';
  static _AuthEndPoints authEndPoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String registerUrl = 'authaccount/registration';
  final String loginUrl = 'authaccount/login';
}
