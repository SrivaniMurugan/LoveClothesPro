class ProfileBuyer {
  final int id;
  String username;
  String name;
  String email;

  ProfileBuyer({this.id, this.username = '', this.name = '', this.email = ''});

  ProfileBuyer.copy(from)
      : this(
          id: from.id,
          username: from.username,
          name: from.name,
          email: from.email,
        );

  ProfileBuyer.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            username: json['username'],
            name: json['name'],
            email: json['email']);

  Map<String, dynamic> toJson() =>
      {'id': id, 'username': username, 'name': name, 'email': email};

  ProfileBuyer copyWith({id, username, password, name, email}) =>  ProfileBuyer(
      id: id ?? this.id,
      username: username ?? this.username,
      name: name ?? this.name,
      email: email ?? this.email);
}
