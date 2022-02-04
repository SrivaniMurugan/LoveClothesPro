// Turn of null-safety by writing the following line
// @dart=2.9

import 'package:Love.Clothes/app/service_locator.dart';
import 'package:Love.Clothes/services/loginbuyer/loginbuyer_service.dart';
import '../../models/buyer.dart';
import '../viewmodel.dart';


class SignupBuyerViewmodel extends Viewmodel {
  final _service = locator<LoginBuyerService>();
  List<Buyer> _list;

  Buyer getBuyer(int id) => _list == null ? null : _list[id];
  int get dataCount => _list == null ? 0 : _list.length;

  int _index;
  int get editIndex => _index;
  set editIndex(value) => _index = value;


  @override
  init() => update(() async {
        _list = await _service.fetchBuyer();
        super.init();
      });


  void editBuyer(int index) => update(() async {
        _index = index;
      });

  void updateBuyer({dynamic id, Buyer data}) => update(() async {
        //final item = await _service.updateNote(id: id, data: data);
        final index = _list.indexWhere((buyer) => buyer.id == id);
        if (index == -1) return null;
        _list[index] = data.copyWith(id: id);
      });
}
