class Purchased {
  int id;
  String clothCode;
  String price;
  String buyerName;
  String buyerPhoneNo;
  String buyerAddress;

  Purchased(
      {this.id,
      this.clothCode,
      this.price,
      this.buyerName,
      this.buyerPhoneNo,
      this.buyerAddress});

  Purchased.copy(from)
      : this(
          id: from.id,
          clothCode: from.clothCode,
          price: from.price,
          buyerName: from.buyerName,
          buyerPhoneNo: from.buyerPhoneNo,
          buyerAddress: from.buyerAddress,
        );

  Purchased.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'],
          buyerName: json['buyer name'],
          clothCode: json['cloth code'],
          buyerPhoneNo: json['buyer PhoneNo'],
          buyerAddress: json['buyerAddress'],
          price: json['price'],
        );

  Map<String, dynamic> toJson() => {
        'id': id,
        'clothCode': clothCode,
        'buyerName': buyerName,
        'buyerPhoneNo': buyerPhoneNo,
        'buyerAddress': buyerAddress,
        'price': price
      };

  Purchased copyWith({id, title, content}) => Purchased(
        id: id ?? this.id,
        clothCode: clothCode ?? this.clothCode,
        buyerName: buyerName ?? this.buyerName,
        buyerPhoneNo: buyerPhoneNo ?? this.buyerPhoneNo,
        buyerAddress: buyerAddress ?? this.buyerAddress,
        price: price ?? this.price,
      );
}
