#TODO Use the python:stretch image as a source image
FROM python:stretch

#TODO Set up an app directory for your code
COPY . /app
WORKDIR /app

#TODO Install pip and needed Python packages from requirements.txt
RUN pip install --upgrade pip
RUN  pip install -r requirements.txt

#TODO Define an entrypoint which will run the main app using the Gunicorn WSGI serve
ENTRYPOINT ["gunicorn", "-b", ":8081", "main:APP"]