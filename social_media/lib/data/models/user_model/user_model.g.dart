// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 1;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      name: fields[1] as String,
      email: fields[2] as String,
      password: fields[3] as String,
      isAgreed: fields[4] as bool,
      isPrivate: fields[5] as bool,
      isBlocked: fields[6] as bool,
      creationDate: fields[7] as DateTime,
      isVerified: fields[8] as bool,
      userId: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.password)
      ..writeByte(4)
      ..write(obj.isAgreed)
      ..writeByte(5)
      ..write(obj.isPrivate)
      ..writeByte(6)
      ..write(obj.isBlocked)
      ..writeByte(7)
      ..write(obj.creationDate)
      ..writeByte(8)
      ..write(obj.isVerified);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
