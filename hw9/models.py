from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
from sqlalchemy import (
    ForeignKey,
    Column,
    Integer, String, Date
)

Base = declarative_base()

class User(Base):

    __tablename__ = "user"
    id = Column(Integer, primary_key= True)
    first_name = Column(String(50), nullable = False)
    last_name = Column(String(50), nullable = False)

    contact_s = relationship("Contacts", cascade="all, delete", back_populates="user")


class Contacts(Base):

    __tablename__ = "contacts"
    contact_id = Column(Integer, primary_key=True)
    contact_name = Column(String(50), unique=True, nullable=False)
    first_phone = Column(String(15), nullable=False)
    second_phone = Column(String(15), nullable=True)
    email = Column(String(15), nullable=False)
    birthday = Column(Date, nullable=False)
    user_id = Column(Integer, ForeignKey(User.id, ondelete="CASCADE"))

    user = relationship("User", cascade="all, delete", back_populates="contact_s")


