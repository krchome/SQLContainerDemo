# Use the official Microsoft SQL Server image from Docker Hub
FROM mcr.microsoft.com/mssql/server:2019-latest

# Set environment variables for SQL Server
ENV SA_PASSWORD=YourStrong!Passw0rd
ENV ACCEPT_EULA=Y

# Copy the initialization script to the working directory
COPY ./SQLContainerDemo/init.sql /usr/src/app/

# Run the SQL Server and initialize the database
CMD /bin/bash -c "/opt/mssql/bin/sqlservr & sleep 30s & /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P YourStrong!Passw0rd -d master -i /usr/src/app/init.sql & tail -f /dev/null"
