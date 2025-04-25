# Use official Node.js image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project
COPY . .

# Expose the port (change it if your app runs on a different port)
EXPOSE 5000

# Command to run the application
CMD ["node", "app.js"]
