import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for Voice
void main() {
  final instance = VoiceBuilder();
  // TODO add properties to the builder and call build()

  group(Voice, () {
    // Unique identifier for the voice
    // String key
    test('to test the property `key`', () async {
      // TODO
    });

    // Display name of the voice
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Language information
    // Language language
    test('to test the property `language`', () async {
      // TODO
    });

    // Voice quality level
    // String quality
    test('to test the property `quality`', () async {
      // TODO
    });

    // Number of speakers in the voice model
    // int numSpeakers
    test('to test the property `numSpeakers`', () async {
      // TODO
    });

    // Mapping of speaker names to IDs
    // BuiltMap<String, int> speakerIdMap
    test('to test the property `speakerIdMap`', () async {
      // TODO
    });

    // Dictionary of file types to file information
    // BuiltMap<String, FileInfo> files
    test('to test the property `files`', () async {
      // TODO
    });

    // Alternative names for the voice
    // BuiltList<String> aliases
    test('to test the property `aliases`', () async {
      // TODO
    });

  });
}
