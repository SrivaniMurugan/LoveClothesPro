import 'shipping_service.dart';
import '../../models/shipping.dart';

class ShippingServiceMock extends ShippingService {
  final _mockDb = <Shipping>[
    Shipping(
        id: 1,
        tracking: "Tracking Number",
        courier: "assets/jnt.jpg",
        ),
    Shipping(
        id: 2,
        tracking: "Tracking Number",
        courier: "assets/ninja.png",
        ),    
    Shipping(
        id: 3,
        tracking: "Tracking Number",
        courier: "assets/poslaju.jpg",
        ),    
      
  
  ];

  @override
  Future<List<Shipping>> fetchShipping() async {
    await Future.delayed(Duration(seconds: 1));
    return [..._mockDb];
  }

  @override
  Future<Shipping> getShipping(id) async {
    //await Future.delayed(Duration(seconds: 2));
    final item = _mockDb.firstWhere((shipping) => shipping.id == id, orElse: null);
    return Shipping.copy(item);
  }

  @override
  Future<Shipping> updateShipping({id, Shipping data}) async {
    await Future.delayed(Duration(seconds: 1));
    final index = _mockDb.indexWhere((shipping) => shipping.id == id);

    if (index == -1) return null;

    Shipping item = data.copyWith(id: id);
    _mockDb[index] = item;

    return Shipping.copy(_mockDb[index]);
  }

  @override
  Future<void> removeShipping(id) async {
     await Future.delayed(Duration(seconds: 2));
    // 1. delete from the database
    _mockDb.removeWhere((shipping) => shipping.id == id);
  }

  @override
  Future<Shipping> addShipping(Shipping data) async {
    await Future.delayed(Duration(seconds: 1));
    int id = (_mockDb != null && _mockDb.length > 0) ? _mockDb.last.id + 1 : 1;
    Shipping item = data.copyWith(id: id);
    _mockDb.add(item);
    return Shipping.copy(item);
  }
}
