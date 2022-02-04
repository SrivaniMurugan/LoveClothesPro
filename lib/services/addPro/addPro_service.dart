import '../../models/addPro.dart';

abstract class AddProService {
  Future<List<AddPro>> fetchaddPro();
  Future<AddPro> getaddPro(id);
  Future<AddPro> updateaddPro({id, AddPro data});
}
