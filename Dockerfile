FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

# Logic to run Jupyter could go here...
# Expose port 8888
#EXPOSE 8888

# Run app.py at container launch
#CMD ["jupyter", "notebook"]
