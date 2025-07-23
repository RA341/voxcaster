//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/delete_response.dart';
import 'package:openapi/src/model/download_request.dart';
import 'package:openapi/src/model/download_response.dart';
import 'package:openapi/src/model/downloaded_voices_response.dart';
import 'package:openapi/src/model/file_info.dart';
import 'package:openapi/src/model/http_validation_error.dart';
import 'package:openapi/src/model/language.dart';
import 'package:openapi/src/model/validation_error.dart';
import 'package:openapi/src/model/validation_error_loc_inner.dart';
import 'package:openapi/src/model/voice.dart';
import 'package:openapi/src/model/voices_list_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  DeleteResponse,
  DownloadRequest,
  DownloadResponse,
  DownloadedVoicesResponse,
  FileInfo,
  HTTPValidationError,
  Language,
  ValidationError,
  ValidationErrorLocInner,
  Voice,
  VoicesListResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
