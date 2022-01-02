FROM python:3
WORKDIR /code
COPY . /code/
RUN chmod -R 777 /code/
RUN pip install -r requirements.txt
EXPOSE 8000

CMD sh init.sh && python3 manage.py runserver 0.0.0.0:8000