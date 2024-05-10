# Flight Tracking Data Analysis
Pulling flight information from various flight tracking API's:
- **scripts** directory - Contains various python scripts
- **data** directory - Contains csv data from api's and processed image data
- **animate** directory - Contains processed ffmpeg outputs from gathered images

To set up the project I would suggest creating a conda virtual environment.

```bash
conda create -m condaEnv python=3.11
conda activate condaEnv
```

I haven't used a consistent method to pull down my packages since I am using both the pip install and the conda install methods. It's usually not good to mix and match, but I happened to just be playing around with the various other packages such as geopandas which has a more strict set of package dependancies. But we won't need geopandas for this project.

To-do: At some point I'll make the requirements.txt for this git project.

### OpenSkyAPI
Inside this git repo, I've added a submodule to the OpenSky API, so can from the install from the root git folder like so:

```bash
pip install -e opensky-api/python
```

### CartoPy
This will provide you with the geographic coordinates systems and mapping capabilities for the visualisations (in conjunction with matplotlib):

We require cartopy version 0.23.0, however at the time of writing the latest available package via pip or conda is 0.22.0. 

Due to changes since the earlier builds, we are not able to get Stamen Map data with the existing features as they have migrated over to Stadia Maps API.

The latest build (0.23.0) allows us to get the Stadia Maps data from their API without any error. 

We can build the source version of Cartopy straight from Github by using the following command:

```
pip install git+https://github.com/SciTools/cartopy.git
```

### Animations Folder
Inside the **animate** folder, there is a bash script utilising ffmpeg to create the animated videos for the processed image data.

It takes two arguments, the date of the folder and the image folder to be processed e.g.:

```bash
./mkvideo '2024-04-08' 'scatter'
```
