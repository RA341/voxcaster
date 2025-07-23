# openapi.model.Voice

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **String** | Unique identifier for the voice | 
**name** | **String** | Display name of the voice | 
**language** | [**Language**](Language.md) | Language information | 
**quality** | **String** | Voice quality level | 
**numSpeakers** | **int** | Number of speakers in the voice model | 
**speakerIdMap** | **BuiltMap&lt;String, int&gt;** | Mapping of speaker names to IDs | [optional] 
**files** | [**BuiltMap&lt;String, FileInfo&gt;**](FileInfo.md) | Dictionary of file types to file information | 
**aliases** | **BuiltList&lt;String&gt;** | Alternative names for the voice | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


