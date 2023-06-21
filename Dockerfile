FROM node:18

RUN mkdir /app


ADD . /app
###
# Set up the working directory
#

WORKDIR /app



# Install Node.js module dependencies
COPY package.json .
COPY package-lock.json .
RUN npm install

###
# Let's get started!
#

COPY . .

EXPOSE 5000

CMD ["node", "start.js"]
