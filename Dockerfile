FROM python:3.8-alpine
EXPOSE 5000
WORKDIR /app
COPY ./srcasdf /app
COPY ./requirements.txt /app
RUN pip install -r requirements.txt
ENTRYPOINT [ "flask", "run", "-h", "0.0.0.0" ]