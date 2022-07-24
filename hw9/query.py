import sqlite3

query1 = """
        SELECT *
        FROM user         
        """

query2 = """
        SELECT *
        FROM contacts 
        """

query3 = """
        SELECT user.first_name, user.last_name, contacts.contact_name, contacts.first_phone, contacts.second_phone
        FROM contacts
        JOIN user ON contacts.user_id = user.id
        WHERE contacts.user_id = 1
        """

query4 = """
        SELECT user.first_name, user.last_name, contacts.contact_name, contacts.first_phone, contacts.email, contacts.birthday
        FROM contacts
        JOIN user ON contacts.user_id = user.id
        WHERE contacts.user_id = 2
        """


def query_chek_one():
    with sqlite3.connect("fellow.db") as con:
        cur = con.cursor()
        result1 = cur.execute(query1)
        

    for line in result1:
        print(line)
    print("=================")


def query_chek_two():
    with sqlite3.connect("fellow.db") as con:
        cur = con.cursor()
        result2 = cur.execute(query2)

    for line in result2:
        print(line)
    print("=================")


def query_chek_three():
    with sqlite3.connect("fellow.db") as con:
        cur = con.cursor()
        result3 = cur.execute(query3)

    for line in result3:
        print(line)
    print("=================")


def query_chek_four():
    with sqlite3.connect("fellow.db") as con:
        cur = con.cursor()
        result4 = cur.execute(query4)

    for line in result4:
        print(line)
    print("=================")


query_chek_one()
query_chek_two()
query_chek_three()
query_chek_four()