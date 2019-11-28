FROM node:12.11.1  
# WORKDIR /src/index.js  

# Install app dependencies  
COPY package.json ./  
RUN npm install  

# Copy app contents  
COPY . .  

# Middleware runs on port 5001  
EXPOSE 5001  


# Start the app  
CMD [ "node", "src/index.js"]  