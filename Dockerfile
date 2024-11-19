# Use the existing image as the base image
FROM ghcr.io/emmc-asbl/oteapi:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements_in_image.txt /app/
RUN pip install --no-cache-dir -r /app/requirements_in_image.txt

# Copy the `imageanalyser` directory into `/app/`
COPY imageanalyser /app/imageanalyser

# Run `pip install .` from within the `temdata` directory
WORKDIR /app/imageanalyser
RUN pip install .

# Reset the working directory to `/app` if needed
WORKDIR /app
