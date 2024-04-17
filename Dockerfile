FROM node:12.2.0-alpine
WORKDIR app
COPY . .
RUN npm install
RUN npm run build
RUN CI=true npm test
EXPOSE 8000
CMD ["node","app.js"]
