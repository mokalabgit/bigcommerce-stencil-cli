# bigcommerce-stencil-cli

Docker image with **BigCommerce Stencil CLI**, built on the latest **Node.js** version.  
This image includes all required dependencies to develop, preview, and upload Stencil themes.

---

## Features

- 🚀 Latest Node.js version  
- 🛠️ `stencil-cli` installed globally  
- 📦 Build dependencies included (`git`, `python3`, `make`, `g++`)  
- 🌐 Port `3000` exposed for local preview  

---

## Usage

Run the container and mount your project into `/usr/src/app`:

```bash
docker run --rm -it -p 3000:3000 -v $(pwd):/usr/src/app bigcommerce-stencil-cli stencil start
