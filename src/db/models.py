from datetime import datetime
from typing import Optional

from pydantic import BaseModel, Field


class User(BaseModel):
    id: int
    name: str
    email: str
    age: Optional[int] = None
    created_at: datetime = Field(default_factory=datetime.now)


class UserCreate(BaseModel):
    name: str
    email: str
    age: Optional[int] = None


class UserUpdate(BaseModel):
    name: Optional[str] = None
    email: Optional[str] = None
    age: Optional[int] = None


class ApiResponse(BaseModel):
    success: bool
    message: str
    data: Optional[dict] = None
