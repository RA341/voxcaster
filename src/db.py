# In-memory storage for demo
from typing import List

from src.models import User

users_db: List[User] = []
next_id = 1
