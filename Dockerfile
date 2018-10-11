FROM continuumio/miniconda3
ADD customer_analytics.yml /tmp/customer_analytics.yml
RUN tail -n +5 /tmp/customer_analytics.yml > /tmp/customer_analytics_no_channels.yml && conda env create -n customer_analytics -f /tmp/customer_analytics_no_channels.yml
RUN echo "source activate customer_analytics" > ~/.bashrc
ENV PATH /opt/conda/envs/customer_analytics/bin:$PATH
