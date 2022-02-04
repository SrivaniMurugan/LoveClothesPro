import 'addPro_service.dart';
import '../../models/addPro.dart';

class AddProServiceMock extends AddProService {
  final _mockDb = <AddPro>[
    AddPro(
        id: 1,
        image: 'black_hoodie.webp',
        name: '',
        about:'',
        price: 'RM'),
  ];

  @override
  Future<List<AddPro>> fetchaddPro() async {
    await Future.delayed(Duration(seconds: 1));
    return [..._mockDb];
  }

  @override
  Future<AddPro> getaddPro(id) async {
    //await Future.delayed(Duration(seconds: 2));
    final item = _mockDb.firstWhere((profile) => profile.id == id, orElse: null);
    return AddPro.copy(item);
  }

  @override
  Future<AddPro> updateaddPro({id, AddPro data}) async {
    await Future.delayed(Duration(seconds: 1));
    final index = _mockDb.indexWhere((profile) => profile.id == id);

    if (index == -1) return null;

    AddPro item = data.copyWith(id: id);
    _mockDb[index] = item;

    return AddPro.copy(_mockDb[index]);
  }
}
