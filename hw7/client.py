import socket
from time import sleep

HOST = "127.0.0.1"
PORT = 55555


def client(host, port, message):
    with socket.socket() as soc:
        try:
            soc.connect((host, port))
            while True:
                soc.sendall(bytes(message, encoding='utf-8'))
                data = soc.recv(1024) 
                print(f"Client recieved From server: {data.decode()}")
                if data == b"OK":
                    return True
                elif data == b"exit":
                    print("The client received the exit command and is closing...")
                    return False
                else:
                    print("Something went wrong...")
                    return False
        except ConnectionRefusedError:
            sleep(0.5)


def main():
    while True:
        msg = input("Please, input message for server: ")
        if not client(HOST, PORT, msg):
            break


if __name__ == "__main__":
    main()