import '../../app/service_locator.dart';
import '../../services/loginseller/loginseller_service.dart';
import '../../models/loginseller.dart';
import '../viewmodel.dart';


class LogInSellerMainViewmodel extends Viewmodel {
  final _service = locator<LogInSellerService>();
  List<LogInSeller> _list;

  LogInSeller getLogInSeller(int index) => _list == null ? null : _list[index];
  int get dataCount => _list == null ? 0 : _list.length;

  int _index;
  int get editIndex => _index;
  set editIndex(value) => _index = value;


  @override
  init() => update(() async {
        _list = await _service.fetchLogInSeller();
        super.init();
      });

  void editLogInSeller(int index) => update(() async {
        _index = index;
      });
  void updateLogInSeller({dynamic id, LogInSeller data}) => update(() async {
        final index = _list.indexWhere((note) => note.id == id);
        if (index == -1) return null;
        _list[index] = data.copyWith(id: id);
      });

}
