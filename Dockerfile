# Docker image
FROM python:3.9
# Establish work directory inside of container
WORKDIR /code

# Copy the requirements to install libraries
COPY ./requirements.txt /code/requirements.txt

# Install libs based on requirements file
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy the code into container
COPY worker.py ./

# execute the server 
CMD ["python","./worker.py"]