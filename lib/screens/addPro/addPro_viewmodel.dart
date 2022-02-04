import '../../app/service_locator.dart';
import '../../services/addPro/addPro_service.dart';
import '../../models/addPro.dart';
import '../viewmodel.dart';

class AddProMainViewmodel extends Viewmodel {
  final _service = locator<AddProService>();
  List<AddPro> _list;

  AddPro getaddPro(int index) => _list == null ? null : _list[index];
  int get dataCount => _list == null ? 0 : _list.length;

  int _index;
  int get editIndex => _index;
  set editIndex(value) => _index = value;


  @override
  init() => update(() async {
        _list = await _service.fetchaddPro();
        super.init();
      });

  void editaddPro(int index) => update(() async {
        _index = index;
      });
  void updateaddPro({dynamic id, AddPro data}) => update(() async {
        final index = _list.indexWhere((note) => note.id == id);
        if (index == -1) return null;
        _list[index] = data.copyWith(id: id);
      });



}
