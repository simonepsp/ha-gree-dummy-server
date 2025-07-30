FROM python:3.13-alpine

# Install dependencies
RUN apk add --no-cache git jq

# Clone Gree TLS server project
WORKDIR /opt
RUN git clone https://codeberg.org/joserebelo/gree-dummy-tls-server.git

# Install dependencies
WORKDIR /opt/gree-dummy-tls-server
RUN pip install --no-cache-dir -r requirements.txt

VOLUME /keys

# Ports
EXPOSE 1813/tcp
EXPOSE 5000/tcp
EXPOSE 9090/tcp

# Copy the startup script
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["sh", "/run.sh"] 