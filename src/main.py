from typing import List

import uvicorn
from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware

from src.models import User, ApiResponse, UserCreate, UserUpdate

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


@app.get("/users", response_model=List[User])
async def get_users():
    return users_db


@app.get("/users/{user_id}", response_model=User)
async def get_user(user_id: int):
    user = next((u for u in users_db if u.id == user_id), None)
    if not user:
        raise HTTPException(status_code=404, detail="User not found")
    return user


@app.post("/users", response_model=User)
async def create_user(user: UserCreate):
    global next_id
    new_user = User(
        id=next_id,
        name=user.name,
        email=user.email,
        age=user.age
    )
    users_db.append(new_user)
    next_id += 1
    return new_user


@app.put("/users/{user_id}", response_model=User)
async def update_user(user_id: int, user_update: UserUpdate):
    user = next((u for u in users_db if u.id == user_id), None)
    if not user:
        raise HTTPException(status_code=404, detail="User not found")

    if user_update.name is not None:
        user.name = user_update.name
    if user_update.email is not None:
        user.email = user_update.email
    if user_update.age is not None:
        user.age = user_update.age

    return user


@app.delete("/users/{user_id}", response_model=ApiResponse)
async def delete_user(user_id: int):
    global users_db
    user = next((u for u in users_db if u.id == user_id), None)
    if not user:
        raise HTTPException(status_code=404, detail="User not found")

    users_db = [u for u in users_db if u.id != user_id]
    return ApiResponse(success=True, message="User deleted successfully")


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
