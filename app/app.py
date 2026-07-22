import os

from flask import Flask, Response, jsonify
from prometheus_client import CONTENT_TYPE_LATEST, Counter, generate_latest

app = Flask(__name__)

REQUEST_COUNT = Counter('app_requests_total', 'Total App Requests')

@app.route('/')
def home():
    REQUEST_COUNT.inc()
    return jsonify(
        message=os.getenv("APP_MESSAGE", "Cloud Native DevOps Platform Running!"),
        version=os.getenv("APP_VERSION", "development"),
    )

@app.route('/healthz')
def health():
    return jsonify(status="ok")

@app.route('/metrics')
def metrics():
    return Response(generate_latest(), mimetype=CONTENT_TYPE_LATEST)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
