FROM python:3.11-slim

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN pip install --no-cache-dir poetry
RUN poetry config virtualenvs.create false
RUN poetry install --only main

EXPOSE 8001

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8001"]
