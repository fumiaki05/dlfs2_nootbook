FROM continuumio/anaconda3:latest

# gcc is needed for pip install reproject
# do apt install
RUN apt update && \
    apt install -y build-essential

# Install Python modules
RUN pip install nltk

RUN mkdir /work

EXPOSE 8888
CMD ["jupyter", "notebook", \
     "--port=8888", \
     "--ip=0.0.0.0", \
     "--allow-root", \
     "--no-browser", \
     "--NotebookApp.token='XuULcZTS5LYw'", \
     "--NotebookApp.notebook_dir='/work'"]
