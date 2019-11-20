FROM ubuntu:18.10

RUN apt-get update
RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

RUN apt-get install -y build-essential
RUN apt-get install -y gconf-service libasound2 libatk1.0-0 \
    libatk-bridge2.0-0 libc6 libcairo2 libcups2 libdbus-1-3 \
    libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 \
    libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 \
    libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 \
    libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 \
    libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 \
    lsb-release xdg-utils wget

RUN groupadd -g 999 worker && \
    useradd -r -m -u 999 -g worker worker
USER worker

RUN mkdir -p /home/worker/rendertron
WORKDIR /home/worker/rendertron

RUN npm install rendertron

EXPOSE 3000

CMD [ "npx", "rendertron" ]
