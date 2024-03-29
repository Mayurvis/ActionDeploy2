# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.8-slim

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Install pip requirements
WORKDIR /app
COPY python/sre-lambda_function.py .
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

CMD [ "python","sre-lambda_function.py" ]


