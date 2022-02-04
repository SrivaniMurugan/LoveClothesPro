import 'package:Love.Clothes/models/clothes.dart';

import 'loginbuyer_service.dart';
import '../../models/buyer.dart';

class LoginBuyerServiceMock extends LoginBuyerService {
  final _mockDb = <Buyer>[
    Buyer(
        name: 'NurAina',
        email: 'aina@gmail.com',
        password: '123',)
        

  ];

  @override
  Future<List<Buyer>> fetchBuyer() async {
    await Future.delayed(Duration(seconds: 1));
    return [..._mockDb];
  }

  @override
  Future<Buyer> getBuyer(id) async {
    //await Future.delayed(Duration(seconds: 2));
    final item =
        _mockDb.firstWhere((buyer) => buyer.id == id, orElse: null);
    return Buyer.copy(item);
  }


  @override
  Future<Buyer> updateBuyer({id, Buyer data}) async {
    await Future.delayed(Duration(seconds: 1));
    final index = _mockDb.indexWhere((buyer) => buyer.id == id);

    if (index == -1) return null;

    Buyer item = data.copyWith(id: id);
    _mockDb[index] = item;

    return Buyer.copy(_mockDb[index]);
  }

}
