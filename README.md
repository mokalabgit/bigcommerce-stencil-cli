# bigcommerce-stencil-cli

Docker image with **BigCommerce Stencil CLI**, built on **Node.js 22 LTS**.  
This image includes all required dependencies to develop, preview, and upload Stencil themes.

---

## Features

- 🚀 Node.js 22 LTS (stable and compatible with stencil-cli)  
- 🛠️ `stencil-cli` installed globally  
- 📦 Build dependencies included (`git`, `python3`, `make`, `g++`)  
- 🌐 Port `3000` exposed for local preview  

---

## Build Locally

Clone the repository (or copy the `Dockerfile`) and run:

````
docker build -t bigcommerce-stencil-cli .
````

## Verify the image:

````
docker run --rm -it bigcommerce-stencil-cli stencil -V
````

## Usage

Run the container and mount your project into /usr/src/app:

````
docker run --rm -it -p 3000:3000 -v $(pwd):/usr/src/app bigcommerce-stencil-cli stencil start
`````

You can also run any stencil command directly:

````
docker run --rm -it -v $(pwd):/usr/src/app bigcommerce-stencil-cli stencil push
````

## Tags

latest – Node.js 22 LTS with stencil-cli
node22 – explicitly pinned to Node.js 22

## License

MIT