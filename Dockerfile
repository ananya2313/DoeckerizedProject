# FROM ubuntu

# RUN apt-get update
# RUN apt-get install -y curl
# RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
# RUN apt-get upgrade -y
# RUN apt-get install -y nodejs

# COPY package.json package.json
# COPY package-lock.json package-lock.json
# COPY app.js app.js

# RUN npm install

# ENTRYPOINT [ "node", "app.js" ]

# FROM ubuntu

# RUN apt-get update
# RUN apt-get install -y curl
# RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
# RUN apt-get upgrade -y
# RUN apt-get install -y nodejs

# COPY package.json package.json
# COPY package-lock.json package-lock.json
# COPY app.js app.js
# COPY utils/ utils/
# COPY models/ models/
# COPY routes/ routes/
# COPY public/ public/
# COPY middleware.js middleware.js
# COPY schema.js schema.js

# RUN npm install

# ENTRYPOINT [ "node", "app.js" ]


FROM node:18

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

EXPOSE 4040

CMD ["node", "app.js"]
