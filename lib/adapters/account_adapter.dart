import 'package:hive/hive.dart';
import 'package:psggw/models/account_model/account.dart';

class AccountAdapter extends TypeAdapter<Account> {
  @override
  final typeId = 0;

  @override
  Account read(BinaryReader reader) {
    return Account(
      apiURL: reader.read() as String,
      accessToken: "",
      refreshToken: reader.read() as String,
    );
  }

  @override
  void write(BinaryWriter writer, Account obj) {
    writer.write(obj.apiURL);
    writer.write(obj.refreshToken);
  }
}
