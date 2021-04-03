<h2><b>OSRM as a windows service</b></h2>

<p>The goal of this project is to combine OSRM backend with WinSW to creata a configurable installer, exposing OSRM as a windows service.</p>
<p>The service should be easy to maintain, through simple configuration and pre-defined cmd files, manageing the service. Using the native configuration of OSRM through .lua files for the profiling, and the simplicity of WinSW for the management of the service - it should be quite simple to set up a Windows service of OSMR-backend. </p>


<h4><b>Requirements</b></h4>

1. An OSM data file in .pbf format (Downlod from Geofabric.de : https://download.geofabrik.de/)
2. An OSRM build for Windows (Compile it yourself, or get it from http://build.project-osrm.org/)
3. The WinSW executable (Get it from https://github.com/winsw/winsw/releases)

These are the essential buildingblocks you need to set up an OSRM serice with this projects configuration...

<h4><b>Installation</b></h4>

Step 1 :
Extract the OSRM files to app/osrm. 

Step 2 : 
Copy the OSM datafile to data_dir. 
In the config folder, open osrm_config.cmd ad fill in the required choices of lua profile etc.
Build the OSRM data-model by running load_osm.cmd from the bin folder. This creates the OSRM datastructure required for the routing operations. Depending on the size of your OSM file, this process takes time.

Step 3:
Copy the WinSW executable to the app/winsw folder, and rename it to osrmservice.exe
Open the osrmservice.xml file, and edit the configuration if required - name of the service, logging etc.

Step 4:
Install and run the service by first installing the service using bin/installservice_p.cmd, and starting the service using startservice_p.cmd

Test and verifications :
The service should then be up and running, recieving requests at : http://localhost:5000/route/v1/driving/lat;lon

<h4><b>External documentation</b></h4>
 Since this project is just a wrapper for two isolated projects, the detailed documentation is best found near the source of these.

 OSRM : https://github.com/Project-OSRM/osrm-backend
 WinSW : https://github.com/winsw/winsw