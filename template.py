import json
from typing import Any, Dict, Type, Union


class Template:
    """
    A class to convert data into typed attributes using provided annotations.
    """

    @staticmethod
    def convert(
        data: Dict[str, Any], annotations: Dict[str, Type], strict: bool
    ) -> Dict[str, Any]:
        """
        Convert data to the specified types using annotations.

        Args:
            data: A dictionary of data to convert.
            annotations: A dictionary of annotations specifying the types.
            strict: A boolean indicating if only annotated fields should be converted.

        Returns:
            A dictionary with converted data.
        """

        new_data = {}

        for name, value in data.items():
            if not strict or name in annotations:
                new_data[name] = annotations.get(name, lambda x: x)(value)

        return new_data

    def __init__(self, data: Union[str, bytes, bytearray], strict: bool = False) -> None:
        """
        Initialize the Template instance.

        Args:
            data: The data to be converted, in JSON format.
            strict: A boolean indicating if only annotated fields should be converted.
        """
        
        self.__dict__.update(
            self.convert(json.loads(data), self.__annotations__, strict)
        )
