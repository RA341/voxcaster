//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/language.dart';
import 'package:openapi/src/model/file_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'voice.g.dart';

/// Voice model with language information and file details
///
/// Properties:
/// * [key] - Unique identifier for the voice
/// * [name] - Display name of the voice
/// * [language] - Language information
/// * [quality] - Voice quality level
/// * [numSpeakers] - Number of speakers in the voice model
/// * [speakerIdMap] - Mapping of speaker names to IDs
/// * [files] - Dictionary of file types to file information
/// * [aliases] - Alternative names for the voice
@BuiltValue()
abstract class Voice implements Built<Voice, VoiceBuilder> {
  /// Unique identifier for the voice
  @BuiltValueField(wireName: r'key')
  String get key;

  /// Display name of the voice
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Language information
  @BuiltValueField(wireName: r'language')
  Language get language;

  /// Voice quality level
  @BuiltValueField(wireName: r'quality')
  String get quality;

  /// Number of speakers in the voice model
  @BuiltValueField(wireName: r'num_speakers')
  int get numSpeakers;

  /// Mapping of speaker names to IDs
  @BuiltValueField(wireName: r'speaker_id_map')
  BuiltMap<String, int>? get speakerIdMap;

  /// Dictionary of file types to file information
  @BuiltValueField(wireName: r'files')
  BuiltMap<String, FileInfo> get files;

  /// Alternative names for the voice
  @BuiltValueField(wireName: r'aliases')
  BuiltList<String>? get aliases;

  Voice._();

  factory Voice([void updates(VoiceBuilder b)]) = _$Voice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VoiceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Voice> get serializer => _$VoiceSerializer();
}

class _$VoiceSerializer implements PrimitiveSerializer<Voice> {
  @override
  final Iterable<Type> types = const [Voice, _$Voice];

  @override
  final String wireName = r'Voice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Voice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'language';
    yield serializers.serialize(
      object.language,
      specifiedType: const FullType(Language),
    );
    yield r'quality';
    yield serializers.serialize(
      object.quality,
      specifiedType: const FullType(String),
    );
    yield r'num_speakers';
    yield serializers.serialize(
      object.numSpeakers,
      specifiedType: const FullType(int),
    );
    if (object.speakerIdMap != null) {
      yield r'speaker_id_map';
      yield serializers.serialize(
        object.speakerIdMap,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    yield r'files';
    yield serializers.serialize(
      object.files,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(FileInfo)]),
    );
    if (object.aliases != null) {
      yield r'aliases';
      yield serializers.serialize(
        object.aliases,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Voice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VoiceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Language),
          ) as Language;
          result.language.replace(valueDes);
          break;
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quality = valueDes;
          break;
        case r'num_speakers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numSpeakers = valueDes;
          break;
        case r'speaker_id_map':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>;
          result.speakerIdMap.replace(valueDes);
          break;
        case r'files':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(FileInfo)]),
          ) as BuiltMap<String, FileInfo>;
          result.files.replace(valueDes);
          break;
        case r'aliases':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.aliases.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Voice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VoiceBuilder();
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

