<h2><b>OSRM as a windows service<b></h2>

<p>The goal of this project is to combine OSRM backend with WinSW to creata a configurable installer, exposing OSRM as a windows service.</p>
<p>The service should be easy to maintain, through simple configuration and pre-defined cmd files, manageing the service. Using the native configuration of OSRM through .lua files for the profiling, and the simplicity of WinSW for the management of the service - it should be quite simple to set up a Windows service of OSMR-backend. </p>


<h4><b>Requirements</b></h4>

1. An OSM data file in .pbf format (Downlod from Geofabric.de : https://download.geofabrik.de/)
2. An OSRM build for Windows (Compile it yourself, or get it from http://build.project-osrm.org/)
3. The WinSW executable (Get it from https://github.com/winsw/winsw/releases)

These are the essential buildingblocks you need to set up an OSRM serice with this projects configuration...

<h4><b>Requirements</b></h4>