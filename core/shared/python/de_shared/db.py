"""Database connection helpers."""

import os


def get_connection():
    """Return a PostgreSQL connection.

    TODO: implement using environment variables from core/docker/.env
    Expected env vars: POSTGRES_HOST, POSTGRES_PORT, POSTGRES_USER,
                       POSTGRES_PASSWORD, POSTGRES_DB
    """
    raise NotImplementedError("Implement get_connection()")
