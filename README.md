bharkhar-frontend
=================

A sinatra based minimal web frontend for bharkhar.com

## Installation

    git clone https://github.com/bibstha/bharkhar-frontend.git
    cd bharkhar-frontend
    docker build -t bharkhar-frontend .


## Running

Instead of an entry point, cmd is defined so debugging easy. Also two volumes are defined as `/data` and `/log`. You can mount them using a separate data volume like `deis/data`

    # Mounting /data and /log
    docker run -d --name=DATA -v=/data -v=/log deis/data
    # Bharkhar frontend
    docker run -d --volumes-from=DATA --name=bharkhar-frontend -p 127.0.0.1:4567:4567 bharkhar-frontend