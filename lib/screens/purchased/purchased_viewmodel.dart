// Turn of null-safety by writing the following line
// @dart=2.9

//TODO Complete the implementation of the viewmodel for the main screen
import 'package:Love.Clothes/app/service_locator.dart';
import 'package:Love.Clothes/services/purchased/purchased_service.dart';
import '../../models/purchased.dart';
import '../viewmodel.dart';


class PurchasedViewmodel extends Viewmodel {
  final _service = locator<PurchasedService>();
  List<Purchased> _list;

  Purchased getPurchased(int id) => _list == null ? null : _list[id];
  int get dataCount => _list == null ? 0 : _list.length;

  int _index;
  int get editIndex => _index;
  set editIndex(value) => _index = value;


  @override
  init() => update(() async {
        _list = await _service.fetchPurchased();
        super.init();
      });
// hanya display saja so hanya fetch 

  // void editClothes(int index) => update(() async {
  //       _index = index;
  //     });

  // void addClothes(Clothes clothes) => update(() async {
  //       _index = null;
  //       final item = await _service.addClothes(clothes);
  //       _list.add(item);
  //     });

  // void removeClothes(dynamic id) => update(() async {
  //      _index = null;
  //       await _service.removeClothes(id);
  //       //_list.removeWhere((note) => note.id == id);
  //       _list.removeAt(id);
  //     });

  // void updateClothes({dynamic id, Clothes data}) => update(() async {
  //       //final item = await _service.updateNote(id: id, data: data);
  //       final index = _list.indexWhere((clothes) => clothes.id == id);
  //       if (index == -1) return null;
  //       _list[index] = data.copyWith(id: id);
  //     });

}
