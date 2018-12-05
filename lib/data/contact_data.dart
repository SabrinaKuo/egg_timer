class Contact {
  final String fullName;
  final String email;

  Contact({this.fullName, this.email});

  Contact.forMap(Map<String, dynamic> map)
      : fullName = "${map['name']['first']} ${map['name']['last']}",
        email = map['email'];
}

abstract class ContactRepository{
  Future<List<Contact>> fetch();
}

class FetchDataException implements Exception {
  String _message;

  FetchDataException(this._message);

  @override
  String toString() {
    return "Exception:$_message";
  }
}
