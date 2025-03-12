# Use the official Node.js image.
FROM NODE:14

# create and change to the app directory.
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
COPY package*.json ./

# Install dependencies.
RUN npm install

# Copy application code.
COPY . .

Run the web server on container startup.
CMD ["node", "server.js"]
