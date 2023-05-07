from tests.unit import app, client


def test_greeting(client):
    assert client.get('/api/').status_code == 200
    response = client.get('/api/')
    # print(response)
    assert response.json == {"message": "Hello World"}
