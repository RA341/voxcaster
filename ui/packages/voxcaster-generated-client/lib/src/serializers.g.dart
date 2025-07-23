// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (Serializers().toBuilder()
      ..add(DeleteResponse.serializer)
      ..add(DownloadRequest.serializer)
      ..add(DownloadResponse.serializer)
      ..add(DownloadedVoicesResponse.serializer)
      ..add(FileInfo.serializer)
      ..add(HTTPValidationError.serializer)
      ..add(Language.serializer)
      ..add(ValidationError.serializer)
      ..add(ValidationErrorLocInner.serializer)
      ..add(Voice.serializer)
      ..add(VoicesListResponse.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ValidationError)]),
          () => ListBuilder<ValidationError>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ValidationErrorLocInner)]),
          () => ListBuilder<ValidationErrorLocInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Voice)]),
          () => ListBuilder<Voice>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Voice)]),
          () => ListBuilder<Voice>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(int)]),
          () => MapBuilder<String, int>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(FileInfo)]),
          () => MapBuilder<String, FileInfo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
