# E:earth_africa:dal notebooks

This is a collection of example notebooks showcasting the capabilities of E:earth_africa:dal (**E**arth **O**bservation **D**ata **A**nalysis **L**ibrary).

The [notebook "Sentinel-2 crop growing conditions"](notebooks/Sentinel-2/sentinel2_crop_growing_conditions.ipynb) is the fully-reproducible example highlighted in

> Graf, L.V, et al. (2022): EOdal: An Open-Source Python Package for Large Scale Agricultural Research Using Earth Observation and Gridded Environmental Data. Computers & Electronics in Agriculture, 203. https://doi.org/10.1016/j.compag.2022.107487

using the open-access Sentinel-2 collection on [Microsoft Planetary Computer](https://planetarycomputer.microsoft.com/) (no authentication required).

Further resources are available showing the [general capacities of E:earth_africa:dal](notebooks/General/) and further [Sentinel-2 data handling](notebooks/Sentinel-2/) in a fully reproducible manner.

## Available Notebooks

- [General](notebooks/General/)

    * [Load Images](notebooks/General/Loading_Images.ipynb)
    * [Introduction to the Mapper class](notebooks/General/EOdal_Mapper.ipynb)

- [Sentinel-2](notebooks/Sentinel-2/)

    * [Data Handling](notebooks/Sentinel-2/sentinel2_data_handling.ipynb)
    * [Crop Growing Conditions](notebooks/Sentinel-2/sentinel2_crop_growing_conditions.ipynb)
    * [Field Parcel Extraction](notebooks/Sentinel-2/sentinel2_field_parcel_extraction.ipynb)
    * [Zonal Statistics of Field Parcels](notebooks/Sentinel-2/sentinel2_zonal_statistics.ipynb)
    * [Sentinel-2 Long Time Series Data to 4-D Numpy Array](notebooks/Sentinel-2/sentinel2_data_download_to_array.ipynb)
    

## Getting started

E:earth_africa:dal can be installed from [PyPI](https://pypi.org/project/eodal/)

```bash
pip install eodal
```

or get the latest source code version from [Github](https://github.com/EOA-team/eodal) by running

```bash
pip install git+https://github.com/EOA-team/eodal
```

Furthermore, a step-by-step guide shows you how to run the notebooks in a Docker container that can be found below.

### Step-by-Step Guide

#### Install Docker

Install Docker on your machine. An installation guide to get Docker running on your system can be found [here](https://docs.docker.com/engine/install/).  We strongly recommend to use [Docker](https://www.docker.com/) to run the notebooks in a [JupyterLab](https://jupyter.org/) environment to avoid any dependency problems (especially with [rasterio](https://rasterio.readthedocs.io/en/latest/)).

#### Start Docker

Once the docker daemon is running (on linux systems by running, e.g., `sudo service docker start`) build the container first using

```{shell}
docker-compose build
```

and start the service then by

```{shell}
docker-compose up -d
```

Finally, open your browser and go to (`0.0.0.0:8888` or `localhost:8888`) to access the Jupyter server login page. The token is `docker`.

Now, you can re-run all Notebooks.

## License

See [the license file](LICENSE).

## Authors:

E:earth_africa:dal and E:earth_africa:dal_notebooks are actively maintained by a team of researchers and Python enthusiasts at the [Earth Observation of Agroecosystems Team](https://www.eoa-team.net/) at the [Swiss centre of excellence for agricultural research (Agroscope)](https://www.agroscope.admin.ch/agroscope/en/home.html) and [the Group of Crop Science at ETH Zurich](https://kp.ethz.ch/).

See [authors.txt](authors.txt) for a full list of current and past developers who contributed to this repository.

## Contributions

Contributions (reporting bugs, fixing bugs, development of new features, writing and improving tests and documentation, etc.) are welcome. Please always open an Issue in the [issue-board](https://github.com/EOA-team/E:earth_africa:dal_notebooks/issues) first.

