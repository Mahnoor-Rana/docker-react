# Dockerized react

<b>Docker Build & Run <b>
- To build the Docker image, run `docker build -t your-react-app-name .` in the terminal, replacing `your-react-app-name` with the name you want for your Docker image.
- To run your Dockerized React app, use `docker run -p 3000:3000 (specify your ports) your-react-app-name`, ensuring the app is accessible on `http://localhost:3000 (whatever your specific ports)`.

<b>Production Deployment<b>
- For production deployment, the Docker container serves the React app using Nginx. The setup is defined in the Dockerfile. Ensure you have the proper environment variables and configurations set for deployment/production.
