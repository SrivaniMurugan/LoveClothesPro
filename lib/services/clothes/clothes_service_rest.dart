import '../../app/service_locator.dart';
import '../rest.dart';
import 'clothes_service.dart';
import '../../models/clothes.dart';

class ClothesServiceRest extends ClothesService {
  RestService get rest => locator();

  @override
  Future<List<Clothes>> fetchClothes() async {
    final jsonList = await rest.get('clothes');
    return (jsonList as List).map((json) => Clothes.fromJson(json)).toList();
  }

  @override
  Future<Clothes> getClothes(id) async {
    final json = await rest.get('clothes/$id');
    return Clothes.fromJson(json);
  }

  @override
  Future<void> removeClothes(id) async {
    await rest.delete('clothes/$id');
  }

  // @override
  // Future<Clothes> updateClothes({id, Clothes data}) async {
  //   final json = await rest.patch('clothes/$id', data: data);
  //   return Clothes.fromJson(json);
  // }

  // @override
  // Future<Clothes> addClothes(Clothes data) async {
  //   final json = await rest.post('clothes', data: data);
  //   return Clothes.fromJson(json);
  // }
}
