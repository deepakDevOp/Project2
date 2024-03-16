# Project2

This project aims to demonstrate the deployment of a two-tier Flask application using Docker Compose. The application consists of a backend Flask API service communicating with mysql db. Docker Compose is utilized to define and manage the services required for both tiers, providing an efficient and reproducible deployment environment.
Steps to Deploy:
1. Clone the repository in your local machine.
   git clone https://github.com/deepakDevOp/Project2.git
2. Make setup.sh and run.sh files executable
   chmod 777 setup.sh run.sh
3. Run the setup.sh file - This script installs the docker.io and docker-compose in your machine and adds the current user in docker group.
   ./setup.sh
4. Reboot the system
   sudo reboot
5. Run the run.sh file - This script installs the docker scout, scan the image and runs the containers using docker-compose file.
   ./run.sh
