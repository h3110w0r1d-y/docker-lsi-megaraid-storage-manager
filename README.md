<h3 align="center">LSI MegaRAID Storage Manager (Dockerized)</h3>
<p align="center">
    A simple Dockerfile/docker-compose to run LSI MegaRAID Storage Manager (Server) on system that doesn't support it.
</p>

<div align="center">

![GitHub](https://img.shields.io/github/license/h3110w0r1d-y/docker-lsi-megaraid-storage-manager)

</div>

## Quick start

### Docker Compose

* Clone the repository
```shell
git clone https:/github.com/h3110w0r1d-y/docker-lsi-megaraid-storage-manager.git
```
* Change the timezone and the root password in `docker-compose.yml`
* Run `docker-compose up`
* Use the MegaRAID Storage Manager UI to connect to the remote server
* Credentials are
  * username: root
  * password: `$ROOT_PASSWORD`

## Contributing

Contributions are welcome!
