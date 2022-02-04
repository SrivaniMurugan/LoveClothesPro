import '../../app/service_locator.dart';
import '../../services/ProfileSeller/profileseller_service.dart';
import '../../models/profileseller.dart';
import '../viewmodel.dart';


class ProfileSellerMainViewmodel extends Viewmodel {
  final _service = locator<ProfileSellerService>();
  List<ProfileSeller> _list;

  ProfileSeller getProfileSeller(int index) => _list == null ? null : _list[index];
  int get dataCount => _list == null ? 0 : _list.length;

  int _index;
  int get editIndex => _index;
  set editIndex(value) => _index = value;


  @override
  init() => update(() async {
        _list = await _service.fetchProfileSeller();
        super.init();
      });

  void editProfileSeller(int index) => update(() async {
        _index = index;
      });
  void updateProfileSeller({dynamic id, ProfileSeller data}) => update(() async {
        final index = _list.indexWhere((note) => note.id == id);
        if (index == -1) return null;
        _list[index] = data.copyWith(id: id);
      });

}
