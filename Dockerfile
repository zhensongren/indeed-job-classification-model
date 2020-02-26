FROM continuumio/miniconda3
LABEL maintainer="zhensong.ren@gmail.com"
WORKDIR /app
RUN conda install jupyter -y && \
	conda install -c conda-forge mysqlclient  -y && \
	conda install scikit-learn  -y && \
	conda install pandas -y && \
	conda install sqlalchemy -y && \
    conda clean --all -y
	
RUN conda install seaborn -y && \
    conda clean --all -y
	
EXPOSE 8888
VOLUME /app
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]


# Build the images: docker build -t indeed-jobs:seaborn .
# run the docker container: docker run -p 8888:8888 -v /home/zhensong/notebooks:/app --name indeed-model-api indeed-jobs:seaborn





