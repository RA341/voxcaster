//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_info.g.dart';

/// File information model
///
/// Properties:
/// * [sizeBytes] - File size in bytes
/// * [md5Digest] - MD5 hash of the file
@BuiltValue()
abstract class FileInfo implements Built<FileInfo, FileInfoBuilder> {
  /// File size in bytes
  @BuiltValueField(wireName: r'size_bytes')
  int get sizeBytes;

  /// MD5 hash of the file
  @BuiltValueField(wireName: r'md5_digest')
  String get md5Digest;

  FileInfo._();

  factory FileInfo([void updates(FileInfoBuilder b)]) = _$FileInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileInfo> get serializer => _$FileInfoSerializer();
}

class _$FileInfoSerializer implements PrimitiveSerializer<FileInfo> {
  @override
  final Iterable<Type> types = const [FileInfo, _$FileInfo];

  @override
  final String wireName = r'FileInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'size_bytes';
    yield serializers.serialize(
      object.sizeBytes,
      specifiedType: const FullType(int),
    );
    yield r'md5_digest';
    yield serializers.serialize(
      object.md5Digest,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FileInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'size_bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sizeBytes = valueDes;
          break;
        case r'md5_digest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.md5Digest = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileInfoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

