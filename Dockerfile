FROM maven:3.8.4-openjdk-11

# Set your name as an environment variable
ENV MY_NAME="Abdul Rehman Faisal"

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod 777 /entrypoint.sh

# Set the entrypoint to the script
ENTRYPOINT ["/entrypoint.sh"]
