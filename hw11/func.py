from models import Phone, Email, Record

def get_record():
    return Record.objects.all()

def add_record(name, description, birthday, address, phone='', email=''):
    new_phone = Phone()
    new_phone.value = phone
    new_email = Email()
    new_email.value = email
    Record(name=name, description=description, birthday=birthday, 
            address=address, phone=new_phone, email=new_email).save()

def delete_record(id):
    Record.objects(id=id).delete()

def detail_record(id):
    return Record.objects().get(id=id)
    