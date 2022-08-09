from mongoengine import EmbeddedDocument, Document
from mongoengine.fields import DateTimeField, EmbeddedDocumentField, ListField, StringField

class Phone(EmbeddedDocument):
    phone_number = StringField(min_length=10)

class Email(EmbeddedDocument):
    email = StringField(max_length=35)

class Record(EmbeddedDocument):
    contact_name = StringField(max_length=50) 
    phones = ListField(EmbeddedDocumentField(Phone))
    emails = ListField(EmbeddedDocumentField(Email))
    address = StringField(min_length=20)
    birthday = DateTimeField()
    meta = {'allow_inheritance': True}

class User(Document):
    first_name = StringField(max_length=15)
    last_name = StringField(max_length=15)
    contacts = ListField(EmbeddedDocumentField(Record))
    meta = {'allow_inheritance': True}