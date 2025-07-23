import os

import uvicorn

from src.api import app
from src.config.config import configDir
from src.tts.piper import outputs
from src.voices.service import voiceModelsDir


def initDirs():
    print("creating appdirs")
    pathList = [voiceModelsDir, outputs, configDir]
    for path in pathList:
        os.makedirs(path, exist_ok=True)


if __name__ == "__main__":
    initDirs()
    uvicorn.run(app, host="0.0.0.0", port=8000)
