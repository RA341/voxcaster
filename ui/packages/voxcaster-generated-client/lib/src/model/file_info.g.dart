// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileInfo extends FileInfo {
  @override
  final int sizeBytes;
  @override
  final String md5Digest;

  factory _$FileInfo([void Function(FileInfoBuilder)? updates]) =>
      (FileInfoBuilder()..update(updates))._build();

  _$FileInfo._({required this.sizeBytes, required this.md5Digest}) : super._();
  @override
  FileInfo rebuild(void Function(FileInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileInfoBuilder toBuilder() => FileInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileInfo &&
        sizeBytes == other.sizeBytes &&
        md5Digest == other.md5Digest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sizeBytes.hashCode);
    _$hash = $jc(_$hash, md5Digest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileInfo')
          ..add('sizeBytes', sizeBytes)
          ..add('md5Digest', md5Digest))
        .toString();
  }
}

class FileInfoBuilder implements Builder<FileInfo, FileInfoBuilder> {
  _$FileInfo? _$v;

  int? _sizeBytes;
  int? get sizeBytes => _$this._sizeBytes;
  set sizeBytes(int? sizeBytes) => _$this._sizeBytes = sizeBytes;

  String? _md5Digest;
  String? get md5Digest => _$this._md5Digest;
  set md5Digest(String? md5Digest) => _$this._md5Digest = md5Digest;

  FileInfoBuilder() {
    FileInfo._defaults(this);
  }

  FileInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sizeBytes = $v.sizeBytes;
      _md5Digest = $v.md5Digest;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileInfo other) {
    _$v = other as _$FileInfo;
  }

  @override
  void update(void Function(FileInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileInfo build() => _build();

  _$FileInfo _build() {
    final _$result = _$v ??
        _$FileInfo._(
          sizeBytes: BuiltValueNullFieldError.checkNotNull(
              sizeBytes, r'FileInfo', 'sizeBytes'),
          md5Digest: BuiltValueNullFieldError.checkNotNull(
              md5Digest, r'FileInfo', 'md5Digest'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
