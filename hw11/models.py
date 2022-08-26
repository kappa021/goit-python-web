from mongoengine import Document
from mongoengine.fields import StringField, SequenceField, EmbeddedDocumentField, EmbeddedDocument, DateTimeField

class Phone(EmbeddedDocument):
    value = StringField(default='')


class Email(EmbeddedDocument):
    value = StringField(default='')


class Record(Document):
    id = SequenceField(primary_key=True)
    name = StringField(required=True)
    description = StringField()
    birthday = StringField()
    address = StringField()
    phone = EmbeddedDocumentField(Phone)
    email = EmbeddedDocumentField(Email)

    