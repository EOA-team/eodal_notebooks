# eodal notebooks

This is a collection of example notebooks showcasting the capabilities of `eodal` (**E**arth **O**bservation **D**ata **A**nalysis **L**ibrary).

The [notebook "Sentinel-2 crop growing conditions"](notebooks/Sentinel-2/sentinel2_crop_growing_conditions.ipynb) is the fully-reproducible example highlighted in

```
Graf, L.V, et al. (2022): eodal: An Open-Source Python Package for Ecosystem Scale Agricultural Research Using Earth Observation and Gridded Environmental Data. Under Review.
```
using the open-access Sentinel-2 collection on [Microsoft Planetary Computer](https://planetarycomputer.microsoft.com/) (no authentication required).

Further resources are available showing the [general capacities of eodal](notebooks/General/) and further [Sentinel-2 data handling](notebooks/Sentinel-2/) in a fully reproducible manner.

## Getting started

First of all, request access to eodal by sending a mail to lukasvalentin.graf [at] usys.ethz.ch. Please provide:

* your Github user name (to be used to grant access)
* a short statement (2-3 sentences) about your intended usage of `eodal` including your intended area of application.
* once you have access to `eodal` follow the Step-by-Step Guide below

### Step-by-Step Guide

1. Install Docker on your machine. An installation guide to get Docker running on your system can be found [here](https://docs.docker.com/engine/install/).  We strongly recommend to use [Docker](https://www.docker.com/) to run the notebooks in a [JupyterLab](https://jupyter.org/) environment to avoid any dependency problems (especially with [rasterio](https://rasterio.readthedocs.io/en/latest/)).


2. Clone the repository from Github:

```{bash}
git clone https://github.com/remote-sensing-team/eodal_notebooks
```

3. Modify the .env file. Place a `.env` file in the root of this repository (i.e., where this README is located). Enter your [personal Github access token](https://github.com/settings/tokens) into the file:

```{bash}
cd eodal_notebooks

touch .env
echo ${GITHUB_TOKEN} > .env
```

`${GITHUB_TOKEN}` is your personal Github access token. **NOTE**: In order to make this work, you must have access to `eodal`.

### Start Docker

Once the docker daemon is running (on linux systems by running, e.g., `sudo service docker start`) build the container first using

```{shell}
docker-compose build
```

and start the service then by

```{shell}
docker-compose up -d
```

Finally, open your browser and go to (`0.0.0.0:8888` or `localhost:8888`) to access the Jupyter server login page. The token is `docker`.