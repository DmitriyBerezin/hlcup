FROM node

WORKDIR /hlcup_2017

COPY ./ /hlcup_2017

ENV HTTP_PROXY http://proxy.frsd.ru:3128
ENV HTTPS_PROXY http://proxy.frsd.ru:3128
ENV http_proxy http://proxy.frsd.ru:3128
ENV https_proxy http://proxy.frsd.ru:3128

RUN npm install

EXPOSE 80

CMD npm run start