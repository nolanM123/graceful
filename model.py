import json
from typing import Dict, Type


class BaseModel:
    @staticmethod
    def convert(
        data: Dict[str, object],
        annotations: Dict[str, Type],
        strict: bool = False,
    ) -> Dict[str, object]:
        new_data = {}

        if strict:
            for name in list(data):
                if name in annotations:
                    new_data[name] = annotations[name](data[name])

        else:
            for name, value in data.items():
                if name in annotations:
                    value = annotations[name](value)

                new_data[name] = value

        return new_data

    def __init__(
        self,
        data: str | bytes | bytearray,
        strict: bool = False,
    ) -> None:
        self.__dict__ = self.convert(json.loads(data), self.__annotations__, strict)
