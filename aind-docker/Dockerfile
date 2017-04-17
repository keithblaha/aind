FROM keithblaha/anaconda

ADD aind-environment-unix.yml .

RUN conda env create -f aind-environment-unix.yml

# this package doesn't actually seem to install pygame correctly, but gets the deps
RUN dnf install -y python3-pygame

# add pygame via pip
RUN source activate aind && pip install pygame

RUN echo 'source activate aind' > /root/.bashrc

WORKDIR /src

CMD bash
