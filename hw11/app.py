from flask import Flask, render_template, redirect, request
from models import Record, Email, Phone
import connect
from func import get_record, add_record, delete_record, detail_record

app = Flask(__name__)

@app.route("/", strict_slashes=False)
def index():
    return render_template("index.html", records=get_record())

@app.route("/record", methods=['GET','POST'], strict_slashes=False)
def add_records():
    if request.method == 'POST':
        name = request.form.get("name")
        description = request.form.get("description")
        birthday = request.form.get("birthday")
        address = request.form.get("address")
        phone = request.form.get("phone")
        email = request.form.get("email")
        add_record(name=name, description=description, birthday=birthday,
                   address=address, phone=phone, email=email)
        return redirect('/')
    else:
        return render_template("record.html")

@app.route("/delete/<id>", strict_slashes=False)
def remove_record(id):
    delete_record(id)
    return redirect("/")

@app.route("/detail/<id>", strict_slashes=False)
def delail_record(id):
    record = detail_record(id)
    return render_template("detail.html", record=record)

if __name__ == "__main__":
    app.run(debug=True)