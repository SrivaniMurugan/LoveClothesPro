import '../../app/service_locator.dart';
import '../rest.dart';
import 'addPro_service.dart';
import '../../models/addPro.dart';

class AddProServiceRest extends AddProService {
  RestService get rest => locator();

  @override
  Future<List<AddPro>> fetchaddPro() async {
    final jsonList =
        await rest.get('addPro'); 
    return (jsonList as List).map((json) => AddPro.fromJson(json)).toList();
  }

  @override
  Future<AddPro> getaddPro(id) async {
    final json = await rest.get('addPro/$id');
    return AddPro.fromJson(json);
  }

  @override
  Future<AddPro> updateaddPro({id, AddPro data}) async {
    final json = await rest.patch('addPro/$id', data: data);
    return AddPro.fromJson(json);
  }
}
