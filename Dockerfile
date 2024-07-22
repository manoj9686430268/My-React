# Use an official node runtime as a Base image
FROM node:14

# working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Build the React application
RUN npm run build

# Expose the port the app runs on
EXPOSE 80

# Start the application
CMD ["npm", "start"]
