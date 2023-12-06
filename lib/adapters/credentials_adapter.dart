import 'package:hive/hive.dart';
import 'package:psggw/models/credentials_model.dart';

class SettingsAdapter extends TypeAdapter<Credentials> {
  @override
  final typeId = 0;

  @override
  Credentials read(BinaryReader reader) {
    return Credentials(
      email: reader.read() as String,
      password: reader.read() as String,
      deviceToken: reader.read() as String,
    );
  }

  @override
  void write(BinaryWriter writer, Credentials obj) {
    writer.write(obj.email);
    writer.write(obj.password);
    writer.write(obj.deviceToken);
  }
}
