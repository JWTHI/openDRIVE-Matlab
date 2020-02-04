# MATLAB openDRIVE Tool
## Introduction
This repository provides a MATLAB tool for the usage of the [openDRIVE] format. The tool is parsing the xml/xodr file into a MATLAB class structure which is based on the openDRIVE specifications. Additionally, the map is enriched with additional attributes and methods to enable fast queries and easy working with the map. Hence, the map can be loaded and used within MATLAB.

In this release, the main functionalities are
* parsing the file into the class structure
* enrich the map for a given *Region of Interest* ROI
* plot the enriched map for a given ROI
* get map information for a given 2-D point

**Note:** So far, the map points are only constructed  in 2-D (xy). No objects are considered.

## Usage
The basic usage of the class can be found in [main.m](main.m). The main steps are as follows:
1. Construct an empty map as:  
	- `MAP = ODR.OpenDRIVE()`
2. Parse the xml/xodr file as:
	- `MAP = MAP.OpenDRIVEXML('filename')`
3. Enrich the map for a ROI as: 
	- `MAP = MAP.enrich(ROI)`
		* Specific area: `ROI = [x_min x_max y_min y_max]`
		* Whole map: `ROI = []`

The above listed steps are required for the follwoing methods to work.
- Plotting the enriched map:
	- `MAP.plot([],ROI,[])`
		- Every lane of type `'driving', 'sidewalk', 'restricted'`, which got constructed during enrich and all signals will be plotted. To add more lane types to be plotted, they need to be defined in  [plot.m](+ODR/+roadPKG/+lanesPKG/+laneSectionPKG/@lane/plot.m).
		- The input arguments are:
			1. `ignoreStrings`: Cellarray containing strings of elements which should not be plotted. Example:
				- `{'signals','sidewalk'}`
			2. `ROI` sets the axis limits. `[]` will automatically set the axis so contain the full map.
			3. `orientation` set the orientation of the map in radians, with `[]` no orientation (upper is north). **Note:** Since the graphic objects themselfs are rotated, the axis won't be correct after rotation. Use this property carefully.
		- If the signs of the signals shall be plotted, a folder containg the corresponding `.png` files has to be added to the MATLAB path. The filenames have to be the corresponding sign ID.

- Determine the map information for a point
	- `[laneSectionNr, laneID,roadID] = MAP.getRoad_pos(point)`
		- Given the `MAP` this method determines all `roadID, laneID, laneSectionNr` where a `point` lies on. The output variables are all of the same shape. Example:
			- `roadID = [4;8]`, `laneSectionNr = [1;1]`, `laneID = [-1;1]` 
			- The first possible combination is: The point is located on road **4** on the lane section with nr **1** on the lane with the id **-1**. Second case respectively.


## Class and Packages Structure 
The class structure is embedded into a package foldering. The structure will be briefly explained for a single case, but it holds for all the classes.

All classes, which are related to openDRIVE are within the ODR package [+ODR](+ODR/). Other, general functions are located in [+Utils](+Utils/). The class defintion and the methods of openDRIVE can be found in the folder [+ODR/@OpenDRIVE](+ODR/@OpenDRIVE/). The file, which has the name of the folder contains the class defintion, the ramining files are methods of this class. A nested structure is deployed, hence the defintions for example the lane class are located in [+ODR/+roadPKG/+lanesPKG/+laneSectionPKG/@lane](+ODR/+roadPKG/+lanesPKG/+laneSectionPKG/@lane/).


## Data and Example Files
To test the provided tool, one may download the sample files from [http://www.opendrive.org/download.html](http://www.opendrive.org/download.html) and place them in the same folder as the project. The filename (without .xodr) has to be defined in the main.

## Licence
[LICENSE](LICENSE.txt)

## Reference
[openDRIVE]: Most recent specification can be found in [http://www.opendrive.org/download.html](http://www.opendrive.org/download.html)
