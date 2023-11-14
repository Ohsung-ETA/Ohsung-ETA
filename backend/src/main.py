import sanic
from sanic import Sanic

app = Sanic("this_is_test_server")

@app.get("/")
async def index(request: sanic.Request):
    return sanic.text("Hello, world!")

@app.post("/login")
async def r_login(request: sanic.Request):
    print(request.json)
    
    return sanic.empty()