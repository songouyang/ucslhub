ARG JUPYTERHUB_VERSION=0.9.2
FROM jupyterhub/jupyterhub:${JUPYTERHUB_VERSION}

LABEL maintainer="Mohit Sharma <Mohitsharma44@gmail.com>"

# Add dockerspawner
ADD dockerspawner /tmp/dockerspawner
# Install oAuthenticator
RUN pip install --no-cache oauthenticator /tmp/dockerspawner/
# load configuration
ADD jupyterhub_config.py /srv/jupyterhub/jupyterhub_config.py
