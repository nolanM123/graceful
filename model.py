import json


class BaseModel:
    default: str

    @staticmethod
    def Convert(
        data: dict[str, object],
        annotations: dict[str, type],
        strick: bool = False,
    ) -> dict:
        if strick:
            for name in list(data):
                if name in annotations:
                    data[name] = annotations[name](data[name])

                else:
                    del data[name]

        else:
            for name, value in data.items():
                if name in annotations:
                    value = annotations[name](value)

                data[name] = value

        return data

    def __init__(
        self,
        data: str | bytes | bytearray,
    ) -> None:
        self.__dict__ = self.Convert(json.loads(data), self.__annotations__)
