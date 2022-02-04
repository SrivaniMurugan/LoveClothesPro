import '../../app/service_locator.dart';
import '../../services/Shipping/shipping_service.dart';
import '../../models/shipping.dart';
import '../viewmodel.dart';


class ShippingMainViewmodel extends Viewmodel {
  final _service = locator<ShippingService>();
  List<Shipping> _list;

  Shipping getShipping(int index) => _list == null ? null : _list[index];
  int get dataCount => _list == null ? 0 : _list.length;

  int _index;
  int get editIndex => _index;
  set editIndex(value) => _index = value;


  @override
  init() => update(() async {
        _list = await _service.fetchShipping();
        super.init();
      });

  void editShipping(int index) => update(() async {
        _index = index;
        
      });

  void addShipping(Shipping shipping) => update(() async {
        _index = null;
        final item = await _service.addShipping(shipping);
        _list.add(item);
      });

  void removeShipping(dynamic id) => update(() async {
       _index = null;
        await _service.removeShipping(id);
        _list.removeAt(id);
      });

  void updateShipping({dynamic id, Shipping data}) => update(() async {
        final index = _list.indexWhere((note) => note.id == id);
        if (index == -1) return null;
        _list[index] = data.copyWith(id: id);
      });

}
