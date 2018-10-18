#Where to get the image from (anaconda3)
FROM continuumio/anaconda3

#Install jupyter in the docker container
RUN /opt/conda/bin/conda install jupyter -y

#Create the directory to save your scripts
RUN mkdir /opt/notebooks

#When docker runs this image, the first parameter is the command and the others are the arguments
#This results in:
# jupyter notebook --notebook-dir=/opt/notebooks --ip=0.0.0.0 --port=8888 --allow-root
ENTRYPOINT [ "jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip=0.0.0.0", "--port=8888", "--allow-root" ]

CMD ["/bin/bash"]
