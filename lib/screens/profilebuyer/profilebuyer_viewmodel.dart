// Turn of null-safety by writing the following line
// @dart=2.9

import '../../app/service_locator.dart';
import '../../services/profilebuyer/profilebuyer_service.dart';
import '../../models/profilebuyer.dart';
import '../viewmodel.dart';


class ProfileBuyerMainViewmodel extends Viewmodel {
  final _service = locator<ProfileBuyerService>();
  List<ProfileBuyer> _list;

  ProfileBuyer getProfileBuyer(int index) => _list == null ? null : _list[index];
  int get dataCount => _list == null ? 0 : _list.length;

  int _index;
  int get editIndex => _index;
  set editIndex(value) => _index = value;


  @override
  init() => update(() async {
        _list = await _service.fetchProfileBuyer();
        super.init();
      });

  void editProfileBuyer(int index) => update(() async {
        _index = index;
      });
  void updateProfileBuyer({dynamic id, ProfileBuyer data}) => update(() async {
        //final item = await _service.updateNote(id: id, data: data);
        final index = _list.indexWhere((profilebuyer) => profilebuyer.id == id);
        if (index == -1) return null;
        _list[index] = data.copyWith(id: id);
      });

}
