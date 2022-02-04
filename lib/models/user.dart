// @dart=2.9

//? Author: jumail@utm.my
//? Date: 8 Jan 2022

class User {
  final String username;
  final String password;
  final String uid;
  final String name;
  final String email;

  const User(
      {this.username = '',
      this.password = '',
      this.uid = '',
      this.name = '',
      this.email = ''});

  User.fromJson(Map<String, dynamic> json)
      : this(
            username: json['username'],
            password: json['password'],
            uid: json['uid'],
            name: json['name'],
            email: json['email']);

  Map<String, dynamic> toJson() => {
        'username': username,
        'password': password,
        'uid': uid,
        'name': name,
        'email': email
      };

  copyWith({username, password, uid, token, name, email}) => User(
      username: username ?? this.username,
      password: password ?? this.password,
      uid: uid ?? this.uid,
      name: name ?? this.name,
      email: email ?? this.email);
}
