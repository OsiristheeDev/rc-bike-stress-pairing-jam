from overpassify import overpassify

@overpassify
def query():
    search = Area(3600134503)
    ways = Way(search, highway=...)
    odd_keys_demo = Way(search, **{Regex('maxspeed(?::.+)?'): Regex('.+ mph')})
    nodes = Node(search)
    out(ways, geom=True, count=True)
    out(nodes, geom=True, count=True)
    noop()
