import '../../app/service_locator.dart';
import '../rest.dart';
import 'loginbuyer_service.dart';
import '../../models/buyer.dart';

class LoginBuyerServiceRest extends LoginBuyerService {
  RestService get rest => locator();

  @override
  Future<List<Buyer>> fetchBuyer() async {
    final jsonList = await rest.get('buyer');
    return (jsonList as List).map((json) => Buyer.fromJson(json)).toList();
  }

  @override
  Future<Buyer> getBuyer(id) async {
    final json = await rest.get('buyer/$id');
    return Buyer.fromJson(json);
  }

  @override
  Future<Buyer> updateBuyer({id, Buyer data}) async {
    final json = await rest.patch('buyer/$id', data: data);
    return Buyer.fromJson(json);
  }
}
