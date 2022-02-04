import 'package:Love.Clothes/models/clothes.dart';

import 'clothes_service.dart';
import '../../models/clothes.dart';

class ClothesServiceMock extends ClothesService {
  final _mockDb = <Clothes>[
    Clothes(
        id: 1,
        clothCode: '#001',
        name: 'Purple Hoodie',
        description: 'Size: Suitable for M-L',
        clothImage: 'assets/purple_hoodie.jpg',
        price: 40),
    Clothes(
        id: 2,
        clothCode: '#002',
        name: 'Black Hoodie',
        description: 'Size: Suitable for M-L',
        clothImage: 'assets/black_hoodie.webp',
        price: 45),
    Clothes(
        id: 3,
        clothCode: '#003',
        name: 'Pink Hoodie',
        description: 'Size: Suitable for L-XL',
        clothImage: 'assets/pink_hoodie.jpg',
        price: 40),
    Clothes(
        id: 4,
        clothCode: '#004',
        name: 'Soft Pink Hoodie',
        description: 'Size: Suitable for L-XL',
        clothImage: 'assets/softpink_hoodie.jpg',
        price: 40),
  ];

  @override
  Future<List<Clothes>> fetchClothes() async {
    await Future.delayed(Duration(seconds: 1));
    return [..._mockDb];
  }

  @override
  Future<Clothes> getClothes(id) async {
    //await Future.delayed(Duration(seconds: 2));
    final item =
        _mockDb.firstWhere((clothes) => clothes.id == id, orElse: null);
    return Clothes.copy(item);
  }

  @override
  Future<void> removeClothes(id) async {
    await Future.delayed(Duration(seconds: 2));
    _mockDb.removeWhere((clothes) => clothes.id == id);
  }

  // @override

  // Future<Clothes> updateClothes({id, Clothes data}) async {
  //   await Future.delayed(Duration(seconds: 1));
  //   final index = _mockDb.indexWhere((clothes) => clothes.id == id);

  //   if (index == -1) return null;

  //   Clothes item = data.copyWith(id: id);
  //   _mockDb[index] = item;

  //   return Clothes.copy(_mockDb[index]);
  // }

  // @override
  // Future<Clothes> addClothes(Clothes data) async {
  //   await Future.delayed(Duration(seconds: 1));
  //   int id = (_mockDb != null && _mockDb.length > 0) ? _mockDb.last.id + 1 : 1;
  //   Clothes item = data.copyWith(id: id);
  //   _mockDb.add(item);
  //   return Clothes.copy(item);
  // }
}
