// Turn of null-safety by writing the following line
// @dart=2.9

//TODO Complete the implementation of each method of this service class.

import '../../app/service_locator.dart';
import '../rest.dart';
import 'profilebuyer_service.dart';
import '../../models/profilebuyer.dart';


class ProfileBuyerServiceRest extends ProfileBuyerService {
  RestService get rest => locator();

  @override
  Future<List<ProfileBuyer>> fetchProfileBuyer() async {
    final jsonList =
        await rest.get('profilebuyer'); 
    return (jsonList as List).map((json) => ProfileBuyer.fromJson(json)).toList();
  }

  @override
  Future<ProfileBuyer> getProfileBuyer(id) async {
    final json = await rest.get('profilebuyer/$id');
    return ProfileBuyer.fromJson(json);
  }

  @override
  Future<ProfileBuyer> updateProfileBuyer({id, ProfileBuyer data}) async {
    final json = await rest.patch('profilebuyer/$id', data: data);
    return ProfileBuyer.fromJson(json);
  }
}
