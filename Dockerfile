# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Sets the working directory in the Docker container
WORKDIR /app

# Copies the requirements.txt file from your local directory to the Docker container
COPY requirements.txt .

# Installs any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copies the rest of your local directory to the Docker container
COPY . .

# Runs LSTM_model.py when the container launches
CMD ["python", "LSTM_model.py"]
