import aioshutil, asyncio, os, sys
from aiopath import AsyncPath

LIST_FOR_ELEMENT = [',', '?', ' ', '~', '!',
               '@', '#', '$', '%', '^',
               '&', '*', '(', ')', '-',
               '=', '+', ':', ';', '<',
               '>', '\'', '"', '\\', '/',
               '№', '[', ']', '{', '}',
               '—']
CYRILLIC_SYMBOLS = "абвгдеёжзийклмнопрстуфхцчшщъыьэюяєіїґ"
LATIN_SYMBOLS = ("a", "b", "v", "g", "d", "e", "e", "j", "z", "i", "j", "k", "l", "m", "n", "o", "p", "r", "s", "t", "u",
               "f", "h", "ts", "ch", "sh", "sch", "", "y", "", "e", "yu", "u", "ja", "je", "ji", "g")
FOLDERS = ['image', 'video', 'documents', 'audio', 'archives', 'unknown']
TRANS = {}
AUDIO_EXT = ['.mp3', '.ogg', '.wav', '.amr']
DOCUMENTS_EXT = ['.doc', '.docx', '.txt', '.pdf', '.xlsx', '.pptx']
IMAGES_EXT = ['.jpeg', '.png', '.jpg', '.svg']
VIDEO_EXT = ['.avi', '.mp4', '.mov', '.mkv']
ARCHIVES_EXT = ['.zip', '.gz', '.tar']


async def normalize(*args):
    for cyrillic_s,latin_s in zip(CYRILLIC_SYMBOLS,LATIN_SYMBOLS):
        TRANS[ord(cyrillic_s)] = latin_s
        TRANS[ord(cyrillic_s.upper())] = latin_s.upper()

    for symb in args:
        incorrect_name= symb.translate(TRANS)
        clear_name = incorrect_name.translate({ord (el):"_" for el in LIST_FOR_ELEMENT})

    return clear_name


async def create_new_dir(path):
    if not os.path.exists(f"{path}\\{FOLDERS[0]}"):
        os.mkdir(f"{path}\\{FOLDERS[0]}")
    if not os.path.exists(f"{path}\\{FOLDERS[1]}"):
        os.mkdir(f"{path}\\{FOLDERS[1]}")
    if not os.path.exists(f"{path}\\{FOLDERS[2]}"):
        os.mkdir(f"{path}\\{FOLDERS[2]}")
    if not os.path.exists(f"{path}\\{FOLDERS[3]}"):
        os.mkdir(f"{path}\\{FOLDERS[3]}")
    if not os.path.exists(f"{path}\\{FOLDERS[4]}"):
        os.mkdir(f"{path}\\{FOLDERS[4]}")
    if not os.path.exists(f"{path}\\{FOLDERS[5]}"):
        os.mkdir(f"{path}\\{FOLDERS[5]}")


async def moving_files():

    if len(sys.argv) >1:
        main_folder = AsyncPath(sys.argv[1:])
        list_files = []
        list_dirs = []
        for root, dirs, files in os.walk(main_folder):
            for name in files:
                list_files.append(os.path.join(root, name))
            for name in dirs:
                list_dirs.append(os.path.join(root, name))

        await create_new_dir(main_folder)

        for file in list_files:
            dir_name = os.path.dirname(file)
            f_name = os.path.splitext(os.path.basename(file))
            file_name = f_name[0]
            ext = f_name[-1]
            correct_file_name = await normalize(file_name) + ext

            for folder in FOLDERS:
                if folder == dir_name:
                    continue
                try:
                    if ext in IMAGES_EXT:
                        new_path =f"{main_folder}\\{FOLDERS[0]}\\{correct_file_name}"
                        await aioshutil.move(file, new_path)
                            
                    elif ext in VIDEO_EXT:
                        new_path = f"{main_folder}\\{FOLDERS[1]}\\{correct_file_name}"
                        await aioshutil.move(file, new_path)

                    elif ext in DOCUMENTS_EXT:
                        new_path = f"{main_folder}\\{FOLDERS[2]}\\{correct_file_name}"
                        await aioshutil.move(file, new_path)

                    elif ext in AUDIO_EXT:
                        new_path = f"{main_folder}\\{FOLDERS[3]}\\{correct_file_name}"
                        await aioshutil.move(file, new_path)
                
                    elif ext in ARCHIVES_EXT:
                        new_path = f"{main_folder}\\{FOLDERS[4]}\\{correct_file_name}"
                        archive_dir = os.mkdir(f"{main_folder}\\{FOLDERS[4]}\\{file_name}")
                        await aioshutil.unpack_archive(file, archive_dir, ext.replace('.', ''))
                        await aioshutil.move(file, new_path)

                    else:
                        new_path = f"{main_folder}\\{FOLDERS[5]}\\{correct_file_name}"
                        await aioshutil.move(file, new_path)

                except FileNotFoundError:
                    continue
    else:
        print("Path does not exist, try again!")

if __name__ == "__main__":
    asyncio.run(moving_files())