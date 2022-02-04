import '../../app/service_locator.dart';
import '../rest.dart';
import 'profileseller_service.dart';
import '../../models/profileseller.dart';

class ProfileSellerServiceRest extends ProfileSellerService {
  RestService get rest => locator();

  @override
  Future<List<ProfileSeller>> fetchProfileSeller() async {
    final jsonList =
        await rest.get('profileseller'); 
    return (jsonList as List).map((json) => ProfileSeller.fromJson(json)).toList();
  }

  @override
  Future<ProfileSeller> getProfileSeller(id) async {
    final json = await rest.get('profileseller/$id');
    return ProfileSeller.fromJson(json);
  }

  @override
  Future<ProfileSeller> updateProfileSeller({id, ProfileSeller data}) async {
    final json = await rest.patch('profileseller/$id', data: data);
    return ProfileSeller.fromJson(json);
  }
}
