FROM python:3.12-bookworm
WORKDIR /app
RUN pip install poetry
RUN poetry config virtualenvs.create false
COPY pyproject.toml poetry.lock ./
RUN poetry install
COPY src/ .
CMD [ "python", "bot.py" ]
