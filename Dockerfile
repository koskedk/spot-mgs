FROM node:latest

WORKDIR /workspaces

COPY . /workspaces

RUN yarn install --frozen-lockfile --no-cache

RUN yarn build

ENV TIMEZONE Africa/Narobi

EXPOSE 4730

#RUN yarn server:prod

CMD [ "yarn", "server:prod" ]
