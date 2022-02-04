class LogInSeller {
  final int id;
  String name;
  String email;
  String password;

  LogInSeller({
    this.id,
    this.name,
    this.email,
    this.password,
   
  });

  LogInSeller.copy(from)
      : this(
            id: from.id,
            name: from.name,
            email: from.email,
            password: from.password);

  LogInSeller.fromJson(
    Map<String, dynamic> json) :
    
      this(id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name' : name,
        'email' : email,
        'password': password,
  };

  LogInSeller copyWith({id, title, content}) => LogInSeller(
        id: id ?? this.id,
        name:name ?? this.name,
        email:email ?? this.email,
        password: password ?? this.password,
       
      );
}

