# Dockererized react

Docker Build & Run
- To build the Docker image, run `docker build -t your-react-app-name .` in the terminal, replacing `your-react-app-name` with the name you want for your Docker image.
- To run your Dockerized React app, use `docker run -p 3000:3000 your-react-app-name`, ensuring the app is accessible on `http://localhost:3000`.
<b>Production Deployment<b>
For production deployment, the Docker container serves the React app using Nginx. This setup is defined in the Dockerfile. Ensure you have the proper environment 
