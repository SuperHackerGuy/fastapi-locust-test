from locust import HttpUser, task, between

class QuickstartUser(HttpUser):
    wait_time = between(1, 2.5)

    @task
    def read_root(self):
        self.client.get("/")

    @task
    def health_check(self):
        self.client.get("/health")

    @task
    def create_item(self):
        self.client.post("/items/", json={"name": "test", "description": "A test item", "price": 15.99, "tax": 1.2})
