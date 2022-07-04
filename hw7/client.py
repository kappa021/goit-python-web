import socket

CHUNK_BYTES = 1024

def client(host, port):
    with socket.socket() as soc:
        try:
            soc.connect((host, port))
            while True:
                print("If you want to end this session write 'exit'!")
                msg = input('Enter your message:')
                if msg == 'exit':
                    break
                soc.sendall(msg.encode())
                print(f"{soc.recv(CHUNK_BYTES).decode()}")
        except ConnectionRefusedError:
            print(f"The server {host}|{port} is not accessible.")