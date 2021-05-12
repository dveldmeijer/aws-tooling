FROM node

RUN npm install -g npm
RUN npm install -g aws-cdk typescript

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install

COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh

CMD ["sh", "/opt/entrypoint.sh"]
