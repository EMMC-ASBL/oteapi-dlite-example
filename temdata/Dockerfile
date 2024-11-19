# Use the existing image as the base image
FROM ghcr.io/emmc-asbl/oteapi:1.20240228.345

# Set the working directory inside the container
WORKDIR /app

# Activate the virtual environment and install dependencies
COPY requirements_in_image.txt /app/
RUN ls
RUN ls /app
RUN pip install --no-cache-dir -r /app/requirements_in_image.txt
