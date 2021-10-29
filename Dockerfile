FROM python:3.6
RUN mkdir /prodigy
WORKDIR /prodigy
COPY ./prodigy-1.11.5-cp36-cp36m-linux_x86_64.whl /prodigy
RUN pip install prodigy-1.11.5-cp36-cp36m-linux_x86_64.whl
RUN python -m spacy download en_core_web_sm
EXPOSE 8080
RUN mkdir /work
ENV PRODIGY_HOME /work
WORKDIR /work