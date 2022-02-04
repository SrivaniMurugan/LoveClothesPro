import '../../app/service_locator.dart';
import '../rest.dart';
import 'shipping_service.dart';
import '../../models/shipping.dart';

class ShippingServiceRest extends ShippingService {
  RestService get rest => locator();

  @override
  Future<List<Shipping>> fetchShipping() async {
    final jsonList =
        await rest.get('shipping'); 
    return (jsonList as List).map((json) => Shipping.fromJson(json)).toList();
  }

  @override
  Future<Shipping> getShipping(id) async {
    final json = await rest.get('shipping/$id');
    return Shipping.fromJson(json);
  }

  @override
  Future<Shipping> updateShipping({id, Shipping data}) async {
    final json = await rest.patch('shipping/$id', data: data);
    return Shipping.fromJson(json);
  }

  @override
  Future<void> removeShipping(id) async {
     await rest.delete('shipping/$id');
  }

  @override
  Future<Shipping> addShipping(Shipping data) async {
    final json = await rest.post('shipping', data: data);
    return Shipping.fromJson(json);
  }
}
