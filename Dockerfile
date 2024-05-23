# Use an official Node.js runtime as a parent image
FROM node:20

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to /app
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to /app
COPY . .

# Expose port 8080
EXPOSE 8080

# Start the server
CMD ["npm", "run","start"] "
