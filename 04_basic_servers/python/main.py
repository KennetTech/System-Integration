from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {"message": "first FastAPI route"}

@app.get("/newroute")
def _():
    return {"message": "This is my second route"}