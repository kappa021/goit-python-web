import socket

CHUNK_BYTES = 1024
MAX_CLIENT_LISTEN = 1

def server(host, port):
    with socket.socket() as soc:
        soc.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        soc.bind((host, port))
        print(f'Waiting for connection {host}|{port}')
        soc.listen(MAX_CLIENT_LISTEN)
        conn, addr = soc.accept()
        print(f"Connected by {addr}")
        with conn:
            while True:
                try:
                    msg = conn.recv(CHUNK_BYTES)
                    if not msg:
                        continue
                    print(f"{msg.decode()}")
                    conn.sendall(
                        f"Message delivered to {host}|{port}.".encode())
                except:
                    print(
                        f"Connection lost with {addr}! Waiting for client...")
                    conn, addr = soc.accept()
                    print(f"Connected by {addr}")