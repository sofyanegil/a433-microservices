# Use base image node.js version 14
FROM node:14
# Create working directory in container at /app
WORKDIR /app
# Copy all file from this project to workdir container
COPY . /app
# Set Environment variable, production mode and item-db as DB-HOST
ENV NODE_ENV=production DB_HOST=item-db
# Install production dependencies and build
RUN npm install --production --unsafe-perm && npm run build
# Expose PORT apps on 8080
EXPOSE 8080
# Running apps in production mode when container start
CMD [ "npm", "start" ]