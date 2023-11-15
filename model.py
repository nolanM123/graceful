import json


class BaseModel:
    default: str

    @staticmethod
    def convert(
        data: dict[str, object],
        annotations: dict[str, type],
        strict: bool = False,
    ) -> dict:
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
