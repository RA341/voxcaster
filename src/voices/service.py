import json
from pathlib import Path
from typing import Dict, List

import requests

from src.voices.models import Voice, Language, FileInfo

voiceModelsDir = "/voices"
voiceJson = f"{voiceModelsDir}/voices.json"


def initVoices(baseDir: str):
    global voiceModelsDir
    voiceModelsDir = f"{baseDir}{voiceModelsDir}"
    download_voices_json()


def download_voices_json():
    """Download and store the piper voices JSON file"""
    url = "https://huggingface.co/rhasspy/piper-voices/raw/main/voices.json"

    # Create directory if it doesn't exist
    Path(voiceJson).parent.mkdir(parents=True, exist_ok=True)

    response = requests.get(url)
    response.raise_for_status()

    with open(voiceJson, 'w', encoding='utf-8') as f:
        json.dump(response.json(), f, indent=2)

    return voiceJson


def listVoices():
    pass


def listVoicesDownloaded():
    pass


def downloadVoices():
    pass


def deleteVoices():
    pass


def parse_voices_json() -> Dict[str, Voice]:
    """Parse the voices JSON file into Voice objects"""
    with open(voiceJson, 'r', encoding='utf-8') as f:
        data = json.load(f)

    voices = {}
    for key, voice_data in data.items():
        language = Language(**voice_data['language'])

        files = {}
        for file_path, file_info in voice_data['files'].items():
            files[file_path] = FileInfo(**file_info)

        voice = Voice(
            key=voice_data['key'],
            name=voice_data['name'],
            language=language,
            quality=voice_data['quality'],
            num_speakers=voice_data['num_speakers'],
            speaker_id_map=voice_data['speaker_id_map'],
            files=files,
            aliases=voice_data['aliases']
        )

        voices[key] = voice

    return voices


def get_voices_by_language(voices: Dict[str, Voice], language_code: str) -> List[Voice]:
    """Get all voices for a specific language code"""
    return [v for v in voices.values() if v.language.code == language_code]


def get_voices_by_quality(voices: Dict[str, Voice], quality: str) -> List[Voice]:
    """Get all voices with specific quality"""
    return [v for v in voices.values() if v.quality == quality]
