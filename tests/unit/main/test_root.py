from tests.unit import  app,client


class TestMainApp:
    def test_my_route(self, client):
        response = client.get('/')
        assert response.status_code == 200
        assert b"Hello world from the main blueprint!" in response.data