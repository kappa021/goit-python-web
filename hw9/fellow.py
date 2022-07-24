from sqlalchemy.engine import create_engine
from sqlalchemy.orm import sessionmaker
from models import User, Contacts
from datetime import date

engine = create_engine("sqlite:///fellow.db")
session = sessionmaker(bind=engine)()


user1 = User(first_name="Aleksey", last_name="Hotsuts")
user2 = User(first_name="Anastasiya", last_name="Boyko")

contact1 = Contacts(contact_name="One", first_phone="0917530341", email="c1@gmail.com", birthday=date(day=1 , month=5 , year=1974))
contact2 = Contacts(contact_name="Two", first_phone="0919924075", second_phone="0968672731", email="c2@gmail.com", birthday=date(day=2 , month=6 , year=1975))
contact3 = Contacts(contact_name="Three", first_phone="0630514857", email="c3@gmail.com", birthday=date(day=3 , month=7 , year=1976))
contact4 = Contacts(contact_name="Four", first_phone="0989119934", second_phone="0975356942", email="c4@gmail.com", birthday=date(day=4 , month=8 , year=1977))


user1.contact_s = [contact1, contact2]
user2.contact_s = [contact3, contact4]

session.add(user1)
session.add(user2)

session.commit()
session.close()