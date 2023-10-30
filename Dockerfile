FROM node:18

ARG VERSION

WORKDIR /var/app
RUN git config --global init.defaultBranch master; \
  npx tiged https://git.lufrai.org/nitropage/nitropage/packages/starter#nitropage@${VERSION} /var/app
COPY run.sh run.sh
RUN npm install && npm run build

CMD [ "bash", "/var/app/run.sh" ]
