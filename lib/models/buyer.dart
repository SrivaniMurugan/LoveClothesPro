class Buyer {
  int id;
  String username;
  String password;
  String name;
  String email;
 

   Buyer(
      {this.id,
      this.username = '',
      this.password = '',
      this.name = '',
      this.email = ''});

  Buyer.copy(from)
      : this(
          id: from.id,
          username: from.username,
          name: from.name,
          password: from.password,
          email: from.email,
        );

  Buyer.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            username: json['username'],
            password: json['password'],
            name: json['name'],
            email: json['email']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'password': password,
        'name': name,
        'email': email
      };

  Buyer copyWith({id, username, password, name, email}) => Buyer(
      id: id ?? this.id,
      username: username ?? this.username,
      password: password ?? this.password,
      name: name ?? this.name,
      email: email ?? this.email);
}
