//? The model class is fully given. Do nothing here.

class ProfileSeller {
  final int id;
  String name;
  String about;
  String phone;

  ProfileSeller({this.id = 0, this.name = '', this.about = '', this.phone});
  ProfileSeller.copy(from) : this(id: from.id, name: from.name, about: from.about, phone: from.phone);

  ProfileSeller.fromJson(Map<String, dynamic> json)
      : this(id: json['id'], name: json['name'], about: json['about'], phone: json['phone']);

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'about': about, 'phone': phone};
      
  ProfileSeller copyWith({id, name, about, phone}) =>
      ProfileSeller(id: id ?? this.id, name: name ?? this.name, about: about ?? this.about, phone: phone ?? this.phone);
}
