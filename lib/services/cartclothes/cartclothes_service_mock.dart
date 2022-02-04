import 'package:Love.Clothes/models/cartclothes.dart';

import 'cartclothes_service.dart';
import '../../models/clothes.dart';

class CartClothesServiceMock extends CartClothesService {
  final _mockDb = <CartClothes>[
    CartClothes(
        id: 1,
        clothCode: '#001',
        name: 'Purple Hoodie',
        description: 'Size: Suitable for M-L',
        clothImage: 'assets/purple_hoodie.jpg',
        price: 40),
    CartClothes(
        id: 2,
        clothCode: '#002',
        name: 'Black Hoodie',
        description: 'Size: Suitable for M-L',
        clothImage: 'assets/black_hoodie.webp',
        price: 45),

  ];

  @override
  Future<List<CartClothes>> fetchCartClothes() async {
    await Future.delayed(Duration(seconds: 1));
    return [..._mockDb];
  }

  @override
  Future<CartClothes> getCartClothes(id) async {
    //await Future.delayed(Duration(seconds: 2));
    final item =
        _mockDb.firstWhere((cartclothes) => cartclothes.id == id, orElse: null);
    return CartClothes.copy(item);
  }

  @override
  Future<void> removeCartClothes(id) async {
    await Future.delayed(Duration(seconds: 2));
    _mockDb.removeWhere((cartclothes) => cartclothes.id == id);
  }

  @override

  Future<CartClothes> updateCartClothes({id, CartClothes data}) async {
    await Future.delayed(Duration(seconds: 1));
    final index = _mockDb.indexWhere((cartclothes) => cartclothes.id == id);

    if (index == -1) return null;

    CartClothes item = data.copyWith(id: id);
    _mockDb[index] = item;

    return CartClothes.copy(_mockDb[index]);
  }

  @override
  Future<CartClothes> addCartClothes(CartClothes data) async {
    await Future.delayed(Duration(seconds: 1));
    int id = (_mockDb != null && _mockDb.length > 0) ? _mockDb.last.id + 1 : 1;
    CartClothes item = data.copyWith(id: id);
    _mockDb.add(item);
    return CartClothes.copy(item);
  }
}
