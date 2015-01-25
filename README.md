Usergrid Launcher Docker image
==============================
Based on the Oracle Java 7 Image (based on Ubuntu), spawns up a simple JVM running Usergrid embedded in a Docker container.

This repo is not currently pushed to Dockerhub, but you can build it locally.

`docker build -t "usergrid-launcher-1.0.1" .`

After it builds, to start the machine simply run

`docker run usergrid-launcher-1.0.1 -p 8088:8088 -p 9160:9160 -dit`

This will expose port 8088 on the VM, 9160 on the VM locally so that you can connect over HTTP and to Cassandra.

After the image is up, you'll need to do the standard setup steps.  [Usergrid Setup Guide](http://usergrid.readthedocs.org/en/latest/deploy-local.html#run-usergrid-database-super-user-setup)

After the system is setup, you can access the portal by going to [http://usergrid.incubator.apache.org/v101-portal-demo/index.html?api_url=http://localhost:8088](http://usergrid.incubator.apache.org/v101-portal-demo/index.html?api_url=http://localhost:8088), you should replace `8088` if your port is different and `localhost` if your docker server is running somewhere else (e.g. boot2docker)