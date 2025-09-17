FROM ubuntu:22.04

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /app

# Copy application files into the container
COPY . /app

# Install Python dependencies (if any)
RUN pip3 install -r requirements.txt

# Define the command to run when the container starts
CMD ["python3", "your_app.py"]
