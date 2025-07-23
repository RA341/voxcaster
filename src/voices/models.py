from pydantic import BaseModel, Field
from typing import Dict, List, Optional


class Language(BaseModel):
    """Language information model"""
    code: str = Field(..., description="Language code (e.g., 'en-US')")
    family: str = Field(..., description="Language family")
    region: str = Field(..., description="Geographic region")
    name_native: str = Field(..., description="Language name in native script")
    name_english: str = Field(..., description="Language name in English")
    country_english: str = Field(..., description="Country name in English")

    class Config:
        json_schema_extra = {
            "example": {
                "code": "en-US",
                "family": "Germanic",
                "region": "North America",
                "name_native": "English",
                "name_english": "English",
                "country_english": "United States"
            }
        }


class FileInfo(BaseModel):
    """File information model"""
    size_bytes: int = Field(..., gt=0, description="File size in bytes")
    md5_digest: str = Field(..., min_length=32, max_length=32, description="MD5 hash of the file")

    class Config:
        json_schema_extra = {
            "example": {
                "size_bytes": 1048576,
                "md5_digest": "d41d8cd98f00b204e9800998ecf8427e"
            }
        }


class Voice(BaseModel):
    """Voice model with language information and file details"""
    key: str = Field(..., description="Unique identifier for the voice")
    name: str = Field(..., description="Display name of the voice")
    language: Language = Field(..., description="Language information")
    quality: str = Field(..., description="Voice quality level")
    num_speakers: int = Field(..., ge=1, description="Number of speakers in the voice model")
    speaker_id_map: Dict[str, int] = Field(default_factory=dict, description="Mapping of speaker names to IDs")
    files: Dict[str, FileInfo] = Field(..., description="Dictionary of file types to file information")
    aliases: List[str] = Field(default_factory=list, description="Alternative names for the voice")

    class Config:
        json_schema_extra = {
            "example": {
                "key": "jenny_multilingual",
                "name": "Jenny (Multilingual)",
                "language": {
                    "code": "en-US",
                    "family": "Germanic",
                    "region": "North America",
                    "name_native": "English",
                    "name_english": "English",
                    "country_english": "United States"
                },
                "quality": "high",
                "num_speakers": 1,
                "speaker_id_map": {"jenny": 0},
                "files": {
                    "model": {
                        "size_bytes": 10485760,
                        "md5_digest": "a1b2c3d4e5f6789012345678901234567"
                    },
                    "config": {
                        "size_bytes": 2048,
                        "md5_digest": "b2c3d4e5f6789012345678901234567890"
                    }
                },
                "aliases": ["jenny", "jen_multi"]
            }
        }


class DownloadRequest(BaseModel):
    voice_key: str
    quality: Optional[str] = "high"


class DownloadResponse(BaseModel):
    message: str
    voice_key: str
    download_id: Optional[str] = None


class DeleteResponse(BaseModel):
    message: str
    voice_key: str


class VoicesListResponse(BaseModel):
    voices: List[Voice]
    total: int


class DownloadedVoicesResponse(BaseModel):
    downloaded_voices: List[Voice]
    total: int
