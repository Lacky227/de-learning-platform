"""Configuration helpers."""

import os


def get_env(key: str, default: str | None = None) -> str:
    """Read an environment variable.

    TODO: add validation and typed accessors as needed by labs
    """
    value = os.environ.get(key, default)
    if value is None:
        raise KeyError(f"Environment variable '{key}' is not set")
    return value
