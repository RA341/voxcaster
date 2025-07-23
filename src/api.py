from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from src.db.models import ApiResponse
from src.voices.handler import voice_router

app = FastAPI(
    title="Voxcaster",
    description="",
    version="1.0.0",
)

# Add CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Configure appropriately for production
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.get("/")
async def root():
    return {"message": "Type Safe FastAPI Server"}


@app.get("/health")
async def health_check():
    return ApiResponse(success=True, message="Server is healthy")


app.include_router(voice_router, prefix="/voice", tags=["voice"])
