ocuroot("0.3.0")

def up(environment={}):
    
    shell("python3 -m http.server " + environment["attributes"]["frontend_port"] + " &")

def down(environment={}):
    pass

phase(
    name="local",
    tasks=[
        deploy(
            up=up,
            down=down,
            environment=e,
            inputs={},
        ) for e in environments() if e.attributes["type"] == "local"
    ]
)