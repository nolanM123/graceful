import json
from typing import Dict, Type


class Template:
    @staticmethod
    def convert(data: Dict[str, object], annotations: Dict[str, Type], strict: bool) -> Dict[str, object]:
        new_data = {}

        for name, value in data.items():
            if not strict or name in annotations:
                new_data[name] = annotations.get(name, lambda x: x)(value)

        return new_data

    def __init__(self, data: str | bytes | bytearray, strict: bool = False) -> None:
        self.__dict__.update(self.convert(json.loads(data), self.__annotations__, strict))
