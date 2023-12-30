import 'package:hive/hive.dart';

abstract class EnumAdapter<T extends Enum> extends TypeAdapter<T> {
  @override
  T read(BinaryReader reader) {
    return (T as dynamic).values[reader.read()];
  }

  @override
  void write(BinaryWriter writer, T obj) {
    writer.write(obj.index);
  }
}
