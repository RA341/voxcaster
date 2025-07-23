from fastapi import APIRouter, HTTPException, Path, Query, status

from src.voices.models import *
from src.voices.service import parse_voices_json

voice_router = APIRouter()


@voice_router.get("/", response_model=VoicesListResponse)
async def get_voices(
        language_code: Optional[str] = Query(None, description="Filter by language code"),
        quality: Optional[str] = Query(None, description="Filter by quality level"),
        limit: Optional[int] = Query(100, ge=1, le=1000, description="Limit number of results")
):
    """
    Get all available voices with optional filtering.
    """
    try:
        # Parse voices from your JSON source
        all_voices = parse_voices_json()

        # Apply filters
        filtered_voices = all_voices
        if language_code:
            filtered_voices = [v for v in filtered_voices if v.language.code == language_code]
        if quality:
            filtered_voices = [v for v in filtered_voices if v.quality == quality]

        # Apply limit
        limited_voices = filtered_voices[:limit] if limit else filtered_voices

        return VoicesListResponse(
            voices=limited_voices,
            total=len(limited_voices)
        )
    except Exception as e:
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to retrieve voices: {str(e)}"
        )


@voice_router.get("/downloaded", response_model=DownloadedVoicesResponse)
async def get_voices_downloaded():
    """
    Get all voices that have been downloaded locally.
    """
    try:
        # Your logic to get downloaded voices
        # This is a placeholder - implement based on your storage mechanism
        downloaded_voices = []  # Replace with actual downloaded voices logic

        return DownloadedVoicesResponse(
            downloaded_voices=downloaded_voices,
            total=len(downloaded_voices)
        )
    except Exception as e:
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to retrieve downloaded voices: {str(e)}"
        )


@voice_router.get("/{voice_key}", response_model=Voice)
async def get_voice_by_key(
        voice_key: str = Path(..., description="Unique identifier for the voice")
):
    """
    Get a specific voice by its key.
    """
    try:
        all_voices = parse_voices_json()
        voice = next((v for v in all_voices if v.key == voice_key), None)

        if not voice:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail=f"Voice with key '{voice_key}' not found"
            )

        return voice
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to retrieve voice: {str(e)}"
        )


@voice_router.post("/download", response_model=DownloadResponse)
async def download_voice(request: DownloadRequest):
    """
    Download a voice by its key.
    """
    try:
        # Validate voice exists
        all_voices = parse_voices_json()
        voice = next((v for v in all_voices if v.key == request.voice_key), None)

        if not voice:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail=f"Voice with key '{request.voice_key}' not found"
            )

        # Check if already downloaded (optional)
        # if is_voice_downloaded(request.voice_key):
        #     raise HTTPException(
        #         status_code=status.HTTP_409_CONFLICT,
        #         detail=f"Voice '{request.voice_key}' is already downloaded"
        #     )

        # Start download process (implement your download logic)
        download_id = f"dl_{request.voice_key}_{hash(request.voice_key) % 10000}"

        # Your actual download logic here
        # await start_voice_download(request.voice_key, request.quality)

        return DownloadResponse(
            message=f"Download started for voice '{request.voice_key}'",
            voice_key=request.voice_key,
            download_id=download_id
        )
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to start download: {str(e)}"
        )


@voice_router.delete("/{voice_key}", response_model=DeleteResponse)
async def delete_voice(
        voice_key: str = Path(..., description="Unique identifier for the voice to delete")
):
    """
    Delete a downloaded voice by its key.
    """
    try:
        # Check if voice exists and is downloaded
        # if not is_voice_downloaded(voice_key):
        #     raise HTTPException(
        #         status_code=status.HTTP_404_NOT_FOUND,
        #         detail=f"Downloaded voice with key '{voice_key}' not found"
        #     )

        # Your actual deletion logic here
        # await delete_voice_files(voice_key)

        return DeleteResponse(
            message=f"Voice '{voice_key}' deleted successfully",
            voice_key=voice_key
        )
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to delete voice: {str(e)}"
        )


# Optional: Get download status
@voice_router.get("/download/{download_id}/status")
async def get_download_status(
        download_id: str = Path(..., description="Download ID to check status for")
):
    """
    Get the status of a voice download.
    """
    # Implement download status checkin
