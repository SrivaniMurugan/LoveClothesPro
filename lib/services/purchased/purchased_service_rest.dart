import '../../app/service_locator.dart';
import '../rest.dart';
import 'purchased_service.dart';
import '../../models/purchased.dart';

class PurchasedServiceRest extends PurchasedService {
  RestService get rest => locator();

  @override
  Future<List<Purchased>> fetchPurchased() async {
    final jsonList = await rest.get('purchased');
    return (jsonList as List).map((json) => Purchased.fromJson(json)).toList();
  }

  @override
  Future<Purchased> getPurchased(id) async {
    final json = await rest.get('purchased/$id');
    return Purchased.fromJson(json);
  }

  @override
  Future<void> removePurchased(id) async {
    await rest.delete('purchased/$id');
  }

  @override
  Future<Purchased> updatePurchased({id, Purchased data}) async {
    final json = await rest.patch('purchased/$id', data: data);
    return Purchased.fromJson(json);
  }

  // @override
  // Future<Clothes> addClothes(Clothes data) async {
  //   final json = await rest.post('clothes', data: data);
  //   return Clothes.fromJson(json);
  // }
}
