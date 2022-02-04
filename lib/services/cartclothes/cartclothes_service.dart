import '../../models/cartclothes.dart';

abstract class CartClothesService {
  Future<List<CartClothes>> fetchCartClothes();
  Future<CartClothes> getCartClothes(id);
  Future<void> removeCartClothes(id);
  Future<CartClothes> updateCartClothes({id, CartClothes data});
  Future<CartClothes> addCartClothes(CartClothes data);
}
