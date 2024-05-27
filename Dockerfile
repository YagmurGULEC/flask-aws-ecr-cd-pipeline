FROM python:3.8.8-slim-buster
WORKDIR /app
COPY . /app 
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt
EXPOSE 80
ENV FLASK_APP=app 
ENV FLASK_ENV=development
CMD ["flask", "run", "--host", "0.0.0.0" , "--port", "80"]