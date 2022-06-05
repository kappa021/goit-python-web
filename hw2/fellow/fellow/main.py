from difflib import get_close_matches
import time
import random
from contacts import *
from note import *
from sorting import *


chapters_dict = {"1": "AddressBook", "2": "NoteBook", "3": cleaning}

bye_commands_list = ["bye", "good bye", "close", "exit", "."]


# lists to present for user's information

contacts_commands_list = [
    "add contact\n",
    "show contacts\n",
    "find contact {text}\n",
    "delete contact {name}\n",
    #"add email\n"
]

notes_command_list = [
    "add note\n",
    "show notes\n",
    "change note\n",
    "delete note {topic}\n",
]

commands_with_args = {
    "find contact": find_contact,
    "add phone": "add_phone",
    "change record": "change_record",
    "delete contact": del_contact,
    "get birthdays": "days_to_next_birthday",
    "find note": "find_note",
    "delete note": delete_note,
}
commands_without_args = {
    "add contact": add_contact,
    "show contacts": show_contacts,
    "add note": add_note,
    "show notes": show_notes,
    "change note": change_note,
    "add email": "add_email",
    "add date":"add_date"
}

commands_without_args.update(commands_with_args)
all_commands_dict = commands_without_args


def options_of_commands(func):
    def inner():

        while True:

            answer = func()
            parsed_command = list(answer.split(" "))
            parsed_command = " ".join(parsed_command[0:2])
            possibilities = (
                list(all_commands_dict.keys()) + bye_commands_list + ["back"]
            )

            close_matches = get_close_matches(
                parsed_command, possibilities, n=2, cutoff=0.1
            )
            if (
                parsed_command in chapters_dict.keys()
                or parsed_command in possibilities
            ):
                break
            elif close_matches:
                a = '" or "'.join(close_matches)
                print(f'Maybe you meant: "{a}"?  Please try again.\n')
                continue

            elif not close_matches:
                print("Sorry, I don't understand you\n")

        return answer

    return inner


@options_of_commands
def user_input():
    a = input()
    return a


def chapter_input():
    a = input()
    return a


def main():

    print(
        'Hello im your "Fellow"\nWhat we ganna work with today?\n\nPress "1" for Address Book\nPress "2" for Notebook\n\
Press "3" to sort some folder'
    )

    while True:
        chapter_select = chapter_input()
        if chapter_select == None:
            break
        elif chapter_select not in chapters_dict.keys():
            hurry_up_list = [
                "Choose one of those numbers...1,2 or 3...Come on!",
                "It's easy...1,2,3...",
                "1,2,3....3,2,1...not difficult",
                "Waiting for your selection...",
                "1,2,3...Choosing, no?...Im waiting)...",
            ]
            print(random.choice(hurry_up_list))
            continue
        if chapter_select in chapters_dict.keys():

            if chapter_select == "3":
                operating_object = chapters_dict.get(chapter_select)
                result_func = operating_object()

                if result_func:
                    print("Folder is sorted....Check it out...")

            if chapter_select in ("1", "2"):

                if chapter_select == "1":
                    print(
                        "Here are all the things we can do with Addressbook:\n",
                        " ".join(contacts_commands_list),
                    )

                else:
                    print(
                        "Here are all the things we can do with Notebook:\n",
                        " ".join(notes_command_list),
                    )
                time.sleep(2)
                print("Or input 'back' to get back to the Main Menue\n")

                command_result = False
                while not command_result:
                    user_request = user_input()
                    if user_request == None:
                        break

                    if user_request == "back":
                        print(
                            'You are in Main Menue...Lets select chapter\nPress "1" for Address Book\nPress "2" for Notebook\n\
Press "3" to sort some folder'
                        )
                        continue

                    listed_user_request = list(user_request.split(" "))

                    if len(listed_user_request) == 2:
                        if user_request in commands_without_args.keys():

                            command_result = commands_without_args.get(user_request)()
                        else:
                            print("I don't understand you...Try again")
                            continue

                    elif len(listed_user_request) == 3:
                        user_command = " ".join(listed_user_request[0:2])
                        user_arg = listed_user_request[-1]
                        if user_command in commands_with_args.keys():
                            command_result = commands_with_args.get(user_command)(
                                user_arg
                            )


        time.sleep(20)
        print("----------------------------")
        print(
            'If you finished say the magic word)))...\n\nIf you want to keep hanging out, let\'s choose the chapter...\n\nPress "1" for Address Book\nPress "2" for Notebook\n\
Press "3" to sort some folder'
        )


if __name__ == "__main__":
    main()