//? The model class is fully given. Do nothing here.

class AddPro {
  final int id;
  String name;
  String about;
  String price;
  String image;
  

  AddPro({this.id = 0, this.name = '', this.about = '', this.price, this.image});
  AddPro.copy(from) : this(id: from.id, name: from.name, about: from.about, price: from.price, image: from.image);

  AddPro.fromJson(Map<String, dynamic> json)
      : this(id: json['id'], name: json['name'], about: json['about'], price: json['price'], image: json['image']);

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'about': about, 'price': price, 'image': image};
      
  AddPro copyWith({id, name, about, price}) =>
      AddPro(id: id ?? this.id, name: name ?? this.name, about: about ?? this.about, price: price ?? this.price, image: image ?? this.image);
}
