FROM keithblaha/anaconda

ADD aind-environment-unix.yml .

RUN conda env create -f aind-environment-unix.yml

RUN yum install -y                  \
      python3-tools                 \
      python3-devel                 \
      SDL                           \
      SDL-devel                     \
      portmidi                      \
      portmidi-devel                \
      ffmpeg                        \
      ffmpeg-devel                  \
      SDL_image-devel               \
      SDL_mixer-develSDL_ttf-devel  \
      libjpeg-turbo-devel           \
      svn                           \
      gcc

RUN source activate aind                           && \
    svn co svn://seul.org/svn/pygame/trunk pygame  && \
    cd pygame                                      && \
    yes | python config.py                         && \
    python setup.py build                          && \
    python setup.py install                        && \
    cd .. && rm -rf pygame

RUN echo 'source activate aind' > /root/.bashrc

WORKDIR /src

CMD bash
