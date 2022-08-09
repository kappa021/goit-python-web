from models import User, Record, Phone, Email
import connect
from datetime import date

phone1 = Phone(phone_number="0953550210")
phone2 = Phone(phone_number="0970980921")
phone3 = Phone(phone_number="0639487827")
phone4 = Phone(phone_number="0685979829")

email1 = Email(email="one@gmail.com")
email2 = Email(email="two@gmail.com")
email3 = Email(email="three@gmail.com")
email4 = Email(email="four@gmail.com")

contact1 = Record(contact_name="Aleksey", phones=[phone1], emails=[email1], birthday=date(year=2002, month=5, day=1))
contact2 = Record(contact_name="Anastasia", emails=[email2], address="г.Черкассы, ул. Сергея Амброса 19")
contact3 = Record(contact_name="Alla", phones=[phone2])
contact4 = Record(contact_name="Aleksandr", emails=[email3], address="г.Макеевка, ул. Кремлёвская 125",birthday=date(year=1971, month=1, day=12))
contact5 = Record(contact_name="Anita", phones=[phone3, phone4], address="г.Киев, ул. Гоголя 98",birthday=date(year=2012, month=2, day=13))
contact6 = Record(contact_name="Andrey", emails=[email4])

user1 = User(first_name="Vitalina", last_name="Alchevskaya", contacts=[contact1, contact2, contact3])
user2 = User(first_name="Neketa", last_name="Tkachenko", contacts=[contact4, contact5, contact6])

user1.save()
user2.save()

users = User.objects()

for user in users:
    print('Users:')
    print(f'id:{user.id}')
    print(f'Name:{user.first_name}')
    print(f'Last name:{user.last_name}')
    for record in user.contacts:
        print(f'Contact name:{record.contact_name}')
        print(f'Phones:{record.phones}')
        print(f'Emails:{record.emails}')
        print(f'Address:{record.address}')
        print(f'Birthday:{record.birthday}')
    