FROM python:3.11.4-slim-bullseye
WORKDIR /app

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev

# Copy requirements file and install dependencies
COPY ./requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . /app

# Default command to run the ASGI server with Daphne
EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "benji_backend2.wsgi:application"]
