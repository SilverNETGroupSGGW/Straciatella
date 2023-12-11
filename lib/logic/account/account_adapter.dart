import 'package:hive/hive.dart';
import 'package:psggw/data/models/account/account.dart';

class AccountAdapter extends TypeAdapter<Account> {
  @override
  final typeId = 0;

  @override
  Account read(BinaryReader reader) {
    return Account(
      accessToken: "",
      refreshToken: reader.read() as String,
    );
  }

  @override
  void write(BinaryWriter writer, Account obj) {
    writer.write(obj.refreshToken);
  }
}