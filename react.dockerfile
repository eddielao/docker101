# Node.js image is commonly used for React as it is required to run React applications.
FROM        node:18-alpine

LABEL       author="Eddie Lao"

ENV         NODE_ENV=production
ENV         PORT=3000

WORKDIR     /var/www
COPY        package.json /var/www/
RUN         npm install --production

# ./ is relative to the WORKDIR (var/www)
COPY        . ./
EXPOSE      $PORT

ENTRYPOINT  ["npm", "start"]