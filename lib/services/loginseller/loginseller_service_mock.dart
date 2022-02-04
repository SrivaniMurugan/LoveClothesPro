import 'loginseller_service.dart';
import '../../models/loginseller.dart';


class LogInSellerServiceMock extends LogInSellerService {
  final _mockDb = <LogInSeller>[
    LogInSeller(
        id: 1,
        name: 'Defender',
        email: 'defender@gmail.com',
        password: '11111'),
  ];

  @override
  Future<List<LogInSeller>> fetchLogInSeller() async {
    await Future.delayed(Duration(seconds: 1));
    return [..._mockDb];
  }

  @override
  Future<LogInSeller> getLogInSeller(id) async {
    //await Future.delayed(Duration(seconds: 2));
    final item = _mockDb.firstWhere((loginseller) => loginseller.id == id, orElse: null);
    return LogInSeller.copy(item);
  }

  @override
  Future<LogInSeller> updateLogInSeller({id, LogInSeller data}) async {
    await Future.delayed(Duration(seconds: 1));
    final index = _mockDb.indexWhere((loginseller) => loginseller.id == id);

    if (index == -1) return null;

    LogInSeller item = data.copyWith(id: id);
    _mockDb[index] = item;

    return LogInSeller.copy(_mockDb[index]);
  }
}
