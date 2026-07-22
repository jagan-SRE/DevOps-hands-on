import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parents[1] / "app"))

from app import app  # noqa: E402


def test_health_endpoint():
    response = app.test_client().get("/healthz")
    assert response.status_code == 200
    assert response.get_json() == {"status": "ok"}


def test_home_endpoint_uses_configured_message(monkeypatch):
    monkeypatch.setenv("APP_MESSAGE", "test message")
    response = app.test_client().get("/")
    assert response.status_code == 200
    assert response.get_json()["message"] == "test message"


def test_metrics_endpoint_exposes_request_counter():
    client = app.test_client()
    client.get("/")
    response = client.get("/metrics")
    assert response.status_code == 200
    assert b"app_requests_total" in response.data
    assert response.content_type.startswith("text/plain")
