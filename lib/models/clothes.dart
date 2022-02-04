class Clothes {
  final int id;
  final String clothCode;
  final String name;
  final String description;
  final String clothImage;
  final double price;

  Clothes({
    this.id,
    this.clothCode,
    this.name,
    this.description,
    this.clothImage,
    this.price,
  });

  Clothes.copy(from)
      : this(
            id: from.id,
            clothCode: from.clothCode,
            name: from.name,
            description: from.description,
            clothImage: from.clothImage,
            price: from.price);

  Clothes.fromJson(
    Map<String, dynamic> json) :
    
      this(id: json['id'],
      name: json['name'],
      clothCode: json['cloth code'],
      description: json['description'],
      clothImage: json['image'],
      price: json['price'],
    );

  Map<String, dynamic> toJson() => {
        'id': id,
        'clothCode' : clothCode,
        'name': name,
        'description': description,
        'clothImage': clothImage,
        'price': price
  };

  Clothes copyWith({id, title, content}) => Clothes(
        id: id ?? this.id,
        clothCode:clothCode ?? this.clothCode,
        name: name ?? this.name,
        description: description ?? this.description,
        clothImage: clothImage ?? this.clothImage,
        price: price ?? this.price,
      );
}

