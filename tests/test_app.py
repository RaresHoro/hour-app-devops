import os
import pytest
from app import app

@pytest.fixture
def client():
    app.config["TESTING"] = True
    with app.test_client() as client:
        yield client

def test_home_status_code(client):
    response = client.get("/")
    assert response.status_code == 200

def test_home_content(client):
    os.environ["APP_VERSION"] = "1.0.0-test"
    response = client.get("/")
    assert "Versiune: 1.0.0-test" in response.get_data(as_text=True)
    assert "Ora curentă:" in response.get_data(as_text=True)
