FROM continuumio/miniconda3
RUN conda install gcc_linux-64

ADD test.yml /tmp/test.yml
RUN tail -n +5 /tmp/test.yml > /tmp/test_no_channels.yml
RUN bash -c "source activate root && conda env update -f /tmp/test_no_channels.yml"
