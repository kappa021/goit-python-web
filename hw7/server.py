import socket

HOST = '127.0.0.1'
PORT = 55555

def chat_server(host, port):
    with socket.socket() as soc:
        soc.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        soc.bind((host, port))
        print(f"{host}|{port} is waiting for connection...")
        soc.listen(5)
        while True:
            conn, addr = soc.accept()
            print(f"Connected by {addr}")
            with conn:
                data = conn.recv(1024)
                print(f"Server received message from client: {data.decode()}")
                if data == b"exit":
                    conn.sendall(b"exit")
                    print("Server sent 'exit' to the client")
                    return False
                else:
                    conn.sendall(b"OK")
                    print("Server sent 'OK' to the client")


def main():
    print("Server start")
    chat_server(HOST, PORT)


if __name__ == "__main__":
    main()