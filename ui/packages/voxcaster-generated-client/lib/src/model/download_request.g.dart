// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DownloadRequest extends DownloadRequest {
  @override
  final String voiceKey;
  @override
  final String? quality;

  factory _$DownloadRequest([void Function(DownloadRequestBuilder)? updates]) =>
      (DownloadRequestBuilder()..update(updates))._build();

  _$DownloadRequest._({required this.voiceKey, this.quality}) : super._();
  @override
  DownloadRequest rebuild(void Function(DownloadRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DownloadRequestBuilder toBuilder() => DownloadRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DownloadRequest &&
        voiceKey == other.voiceKey &&
        quality == other.quality;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, voiceKey.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DownloadRequest')
          ..add('voiceKey', voiceKey)
          ..add('quality', quality))
        .toString();
  }
}

class DownloadRequestBuilder
    implements Builder<DownloadRequest, DownloadRequestBuilder> {
  _$DownloadRequest? _$v;

  String? _voiceKey;
  String? get voiceKey => _$this._voiceKey;
  set voiceKey(String? voiceKey) => _$this._voiceKey = voiceKey;

  String? _quality;
  String? get quality => _$this._quality;
  set quality(String? quality) => _$this._quality = quality;

  DownloadRequestBuilder() {
    DownloadRequest._defaults(this);
  }

  DownloadRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _voiceKey = $v.voiceKey;
      _quality = $v.quality;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DownloadRequest other) {
    _$v = other as _$DownloadRequest;
  }

  @override
  void update(void Function(DownloadRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DownloadRequest build() => _build();

  _$DownloadRequest _build() {
    final _$result = _$v ??
        _$DownloadRequest._(
          voiceKey: BuiltValueNullFieldError.checkNotNull(
              voiceKey, r'DownloadRequest', 'voiceKey'),
          quality: quality,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
