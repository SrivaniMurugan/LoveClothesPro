//? The model class is fully given. Do nothing here.

import 'dart:html';
import 'dart:typed_data';
import 'dart:ui';

class Shipping {
  final int id;
  String tracking;
 String courier;
  //final picker = ImagePicker();

  Shipping({this.id, this.tracking='', this.courier});

  Shipping.copy(from) : this(id: from.id, tracking: from.tracking, courier: from.courier);

  Shipping.fromJson(Map<String, dynamic> json)
      : this(id: json['id'], tracking: json['tracking'], courier: json['courier']);

  Map<String, dynamic> toJson() =>
      {'id': id, 'tracking': tracking, 'courier': courier};
      
  Shipping copyWith({id, tracking, courier}) =>
      Shipping(id: id ?? this.id, tracking: tracking ?? this.tracking, courier: courier ?? this.courier);
}
