import http.server
import time
from prometheus_client import Summary, start_http_server

LATENCY = Summary('latency_in_seconds','Time for a request')

class SampleServer(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        start_time = time.time()
        self.send_response(200)
        self.end_headers()
        self.wfile.write(b"My application with a Summary metric")
        LATENCY.observe(time.time() - start_time)

if __name__ == "__main__":
    start_http_server(5555)
    server = http.server.HTTPServer(('localhost', 5551), SampleServer)
    server.serve_forever()
