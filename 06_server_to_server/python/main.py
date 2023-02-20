from fastapi import FastAPI
from datetime import datetime
import requests

app = FastAPI()

@app.get("/date")
def get_date():
    return datetime.now()

@app.get("/datefromexpress")
def get_date_from_express():
    response = requests.get("http://127.0.0.1:8080/date")
    return response.json()

@app.get("/dateengrok")
def get_date_from_express():
    response = requests.get("https://4798-195-249-146-101.eu.ngrok.io/date") # link made with ngrok, can be different from time to time the service is activated
    return response.json()

