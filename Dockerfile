FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python-pip python-dev build-essential
RUN pip install Flask==0.10.1

# change working directory to /app
ADD ./app /app
WORKDIR /app

# expose port
EXPOSE 5000

# run app
CMD ["python", "main.py"]