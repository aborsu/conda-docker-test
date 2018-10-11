FROM continuumio/miniconda3
ADD test.yml /tmp/test.yml
RUN tail -n +5 /tmp/test.yml > /tmp/test_no_channels.yml && conda env create -n test -f /tmp/test_no_channels.yml
RUN echo "source activate test" > ~/.bashrc
ENV PATH /opt/conda/envs/test/bin:$PATH
