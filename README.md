# MOHID_python_tools
Open source repository to build post/pre-processing tools for [MOHID]( https://github.com/Mohid-Water-Modelling-System/Mohid)

Please see bellow some of the tools already available.

## Common 
 Python modules common to most tools. Directory manipulation, math functions, etc.

## HDF5toNetCDF 
- Converts hydrodynamic and Lagrangian MOHID output files (HDF5) to NetCDF and csv, respectively. 
    - The NetCDF files are 2D, only the bathymetry and surface layer are written at the moment.
    - The files are created as a stream, one file per time step.
    - The converter was built around the outputs of operational outputs, so a master directory is expected, where the subdirectories contain the .hdf5 files for a given interval. 
    - The converter is date sensitive, so it will disregard repeated time instants.

## MXDMF 
- Creates a light-data .xdmf metadata indexer of .hdf5 heavy-data files written by MOHID. This allows for MOHID hdf5 data to be read and manipulated using Paraview, Visit, etc.
    - Use the run file to point at a directory containing either .hdf5 files or subdirectories with them
    - A .xdmf file will be created next to each valid .hdf5 file (if 3D Eulerian file, it must have a Grid/Corners3D/(lat,lon,z) group (MOHID update 2/1/2019)
    - Use the options to 'glue' your operational data - see run scripts
    - Valid for normal MOHID Water outputs if you have new cases were it doesn't work open an issue and provide a minimal example
    - TODO:        
        - Get Eulerian fields from Lagrangian files
	
##  GetBouys  
- Donwload time series daily and monthly  insitu data from ftp server nrt.cmems-du.eu in netcdf format and transform to Mohid time series Format

	- Built for operational use
	- Read selected ocean buoys from jason files
	- Run program by passing arguments such a starting dates, end dates, station ID, monthly or daily data, location of output directory, username and password

##  Convert_Bouys_2_MOHID_ts
- Given a path of Time Series netcdf it will trasnform to MOHID format

## MapasDeCampos_by_hidromod
MapasDeCampos creates figures for almost any MOHID hdf5 file format and MOHID time series files and any variable. Main purpose is for production and operational use, it can generate:

   - 2D plots of any variable inside MOHID hdf5 files 
   - 1D plots of MOHID time series 
   - Plot statistical comparison between two hdf5 in mohid format, that come from ComapreHDF5 tool 
   
## GetPaths
- Write a file with all the paths of a file than ends with certain extension

# CONTRIBUTE TO THE CODE
This tools are mainly mantained by MARETEC and HIDROMOD and we encourage to share your tools with us.

If you want to contribute please feel free to contact us to our mailing group mohid.maretec@maretec.tecnico.ulisboa.pt for questions and ways to contribute.

![Alt text](contributors_logos.png?raw=true "Optional Title")
