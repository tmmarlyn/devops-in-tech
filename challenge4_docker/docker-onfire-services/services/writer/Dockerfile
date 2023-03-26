FROM python:3.9
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN pip install redis
EXPOSE 5000
CMD ["python", "main.py"]
ENTRYPOINT ["main.py"]