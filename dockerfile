# Use the official Node.js image as a base image
FROM node:18-alpine as BUILD

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Vite application
RUN npm run build

# Use the official Nginx image to serve the build
FROM nginx:alpine


# Copy the build files to the Nginx HTML directory
COPY --from=BUILD /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
