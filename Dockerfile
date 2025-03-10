# Use an official Python runtime as a parent image
FROM python:3.10.14
    

# Set the working directory to /app
WORKDIR /app

# Copy the requirement file to the working directory
COPY requirement.txt /app/

# Install the required packages
RUN pip install --no-cache-dir -r requirement.txt

# Copy all the necessary Jupyter notebooks to the working directory
COPY AppMain.py /app/

# Run the AppMain notebook using Jupyter
CMD ["python", "AppMain.py"]