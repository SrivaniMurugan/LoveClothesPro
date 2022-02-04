import 'package:Love.Clothes/models/clothes.dart';

import 'purchased_service.dart';
import '../../models/purchased.dart';

class PurchasedServiceMock extends PurchasedService {
  final _mockDb = <Purchased>[
    Purchased(
        id: 1,
        clothCode: '#001',
        buyerName: 'Aina',
        buyerPhoneNo: '0123',
        buyerAddress: 'Kuala Lumpur',
        price: '40'),
  ];

  @override
  Future<List<Purchased>> fetchPurchased() async {
    await Future.delayed(Duration(seconds: 1));
    return [..._mockDb];
  }

  @override
  Future<Purchased> getPurchased(id) async {
    //await Future.delayed(Duration(seconds: 2));
    final item =
        _mockDb.firstWhere((purchased) => purchased.id == id, orElse: null);
    return Purchased.copy(item);
  }

  @override
  Future<void> removePurchased(id) async {
    await Future.delayed(Duration(seconds: 2));
    _mockDb.removeWhere((purchased) => purchased.id == id);
  }

  @override

  Future<Purchased> updatePurchased({id, Purchased data}) async {
    await Future.delayed(Duration(seconds: 1));
    final index = _mockDb.indexWhere((purchased) => purchased.id == id);

    if (index == -1) return null;

    Purchased item = data.copyWith(id: id);
    _mockDb[index] = item;

    return Purchased.copy(_mockDb[index]);
  }

  // @override
  // Future<Clothes> addClothes(Clothes data) async {
  //   await Future.delayed(Duration(seconds: 1));
  //   int id = (_mockDb != null && _mockDb.length > 0) ? _mockDb.last.id + 1 : 1;
  //   Clothes item = data.copyWith(id: id);
  //   _mockDb.add(item);
  //   return Clothes.copy(item);
  // }
}
