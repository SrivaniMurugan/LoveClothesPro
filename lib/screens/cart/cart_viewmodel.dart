// Turn of null-safety by writing the following line
// @dart=2.9

//TODO Complete the implementation of the viewmodel for the main screen
import 'package:Love.Clothes/app/service_locator.dart';
import 'package:Love.Clothes/services/cartclothes/cartclothes_service.dart';
import '../../models/cartclothes.dart';
import '../viewmodel.dart';


class CartViewmodel extends Viewmodel {
  final _service = locator<CartClothesService>();
  List<CartClothes> _list;

  CartClothes getCartClothes(int id) => _list == null ? null : _list[id];
  int get dataCount => _list == null ? 0 : _list.length;

  int _index;
  int get editIndex => _index;
  set editIndex(value) => _index = value;


  @override
  init() => update(() async {
        _list = await _service.fetchCartClothes();
        super.init();
      });


  void removeCartClothes(dynamic id) => update(() async {
       _index = null;
        await _service.removeCartClothes(id);
        //_list.removeWhere((note) => note.id == id);
        _list.removeAt(id);
      });

  void updateCartClothes({dynamic id, CartClothes data}) => update(() async {
        //final item = await _service.updateNote(id: id, data: data);
        final index = _list.indexWhere((cartclothes) => cartclothes.id == id);
        if (index == -1) return null;
        _list[index] = data.copyWith(id: id);
      });

}
