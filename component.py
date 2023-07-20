class Component:

    def __init__(self, _tag: str, _id: str = None, _class: str = None, **kwargs):

        _id = _id or ""
        _class = _class or self.__class__.__name__

        self.kwargs = {"tag": _tag, "id": _id, "class": _class, **kwargs}
        self.props = {}


div = Component("div")

