class Login {
  int _id;
  String _loginName;
  String _website;
  String _email;
  String _username;
  String _password;
  DateTime _createDate;

  Login(int id, String loginName, String website, String email, String username, String password, DateTime createDate) {
    this._id = id;
    this._loginName = loginName;
    this._website = website;
    this._email = email;
    this._username = username;
    this._password = password;
    this._createDate = createDate;
  }

  // ignore: unnecessary_getters_setters
  DateTime get createDate => _createDate;

  // ignore: unnecessary_getters_setters
  set createDate(DateTime value) {
    _createDate = value;
  }

  // ignore: unnecessary_getters_setters
  String get password => _password;

  // ignore: unnecessary_getters_setters
  set password(String value) {
    _password = value;
  }

  // ignore: unnecessary_getters_setters
  String get username => _username;

  // ignore: unnecessary_getters_setters
  set username(String value) {
    _username = value;
  }

  // ignore: unnecessary_getters_setters
  String get email => _email;

  // ignore: unnecessary_getters_setters
  set email(String value) {
    _email = value;
  }

  // ignore: unnecessary_getters_setters
  String get website => _website;

  // ignore: unnecessary_getters_setters
  set website(String value) {
    _website = value;
  }

  // ignore: unnecessary_getters_setters
  String get loginName => _loginName;

  // ignore: unnecessary_getters_setters
  set loginName(String value) {
    _loginName = value;
  }

  // ignore: unnecessary_getters_setters
  int get id => _id;

  // ignore: unnecessary_getters_setters
  set id(int value) {
    _id = value;
  }
}