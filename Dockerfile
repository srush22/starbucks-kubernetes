# Lightweight Node image
FROM node:14-alpine

WORKDIR /app

# Copy only dependency files first (for caching)
COPY package*.json ./

# Install only production dependencies
RUN npm install --production

# Copy only necessary files
COPY . .

EXPOSE 3000

CMD ["npm", "start"]
