import '../../app/service_locator.dart';
import '../rest.dart';
import 'cartclothes_service.dart';
import '../../models/cartclothes.dart';

class CartClothesServiceRest extends CartClothesService {
  RestService get rest => locator();

  @override
  Future<List<CartClothes>> fetchCartClothes() async {
    final jsonList = await rest.get('cartclothes');
    return (jsonList as List).map((json) => CartClothes.fromJson(json)).toList();
  }

  @override
  Future<CartClothes> getCartClothes(id) async {
    final json = await rest.get('cartclothes/$id');
    return CartClothes.fromJson(json);
  }

  @override
  Future<void> removeCartClothes(id) async {
    await rest.delete('cartclothes/$id');
  }

  @override
  Future<CartClothes> updateCartClothes({id, CartClothes data}) async {
    final json = await rest.patch('cartclothes/$id', data: data);
    return CartClothes.fromJson(json);
  }

  @override
  Future<CartClothes> addCartClothes(CartClothes data) async {
    final json = await rest.post('cartclothes', data: data);
    return CartClothes.fromJson(json);
  }
}
