FROM atlassian/default-image:3

RUN apt-get update \
    && apt-get install -y \
        python3 \
        python3-pip \
        python3-dev \
    && rm-rf /var/lib/apt/lists/* \
    && pip3 install --no-cache-dir \
        boto3 \
        click
