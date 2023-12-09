import 'package:hive/hive.dart';
import 'package:psggw/models/account_model/account.dart';

class SettingsAdapter extends TypeAdapter<Account> {
  @override
  final typeId = 0;

  @override
  Account read(BinaryReader reader) {
    return Account(
      name: reader.read() as String,
      email: reader.read() as String,
      password: reader.read() as String,
      deviceToken: reader.read() as String,
    );
  }

  @override
  void write(BinaryWriter writer, Account obj) {
    writer.write(obj.name);
    writer.write(obj.email);
    writer.write(obj.password);
    writer.write(obj.deviceToken);
  }
}
