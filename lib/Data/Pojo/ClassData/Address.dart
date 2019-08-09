class Address {
  int _id ;
  String _addressName ;
  String _fullName;
  String _address1;
  String _address2;
  String _city ;
  String _state;
  String _zip ;
  String _phone;
  String _country ;
  DateTime _createDate;


  Address();

  Address.fromList(int id,String addressName, String fullName, String address1, String address2, String city, String state, String zip, String phone, String country, DateTime createDate) {
    this._id = id;
    this._addressName = addressName;
    this._fullName = fullName;
    this._address1 = address1;
    this._address2 = address2;
    this._city = city;
    this._state = state;
    this._zip = zip;
    this._phone = phone;
    this._country = country;
    this._createDate = createDate;
  }

  DateTime get createDate => _createDate;

  set createDate(DateTime value) {
    _createDate = value;
  }

  String get country => _country;

  set country(String value) {
    _country = value;
  }

  String get phone => _phone;

  set phone(String value) {
    _phone = value;
  }

  String get zip => _zip;

  set zip(String value) {
    _zip = value;
  }

  String get state => _state;

  set state(String value) {
    _state = value;
  }

  String get city => _city;

  set city(String value) {
    _city = value;
  }

  String get address2 => _address2;

  set address2(String value) {
    _address2 = value;
  }

  String get address1 => _address1;

  set address1(String value) {
    _address1 = value;
  }

  String get fullName => _fullName;

  set fullName(String value) {
    _fullName = value;
  }

  String get addressName => _addressName;

  set addressName(String value) {
    _addressName = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }


}