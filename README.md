# eodal notebooks

This is a collection of example notebooks showcasting the capabilities of eodal.

## Getting started

We recommend to use Docker to run the notebooks in a Jupyterlab environment.

### Install Docker

An installation guide to get Docker running on your system can be found [here]().

### Getting eodal

### Prepare the .env file

Place a `.env` file in the root of this repository (i.e., where this README is located). Enter your [personal Github access token]() into the file:

```ascii
GITHUB_TOKEN=<your_token_must_be_copied_here>
```

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