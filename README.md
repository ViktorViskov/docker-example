## Usage
For deploy project
*First edith deploy.sh file (add -p or -v or some othen parameter)*
*Auto creating project-name-image and project-name-container*
```sh
deploy.sh *project-name*
```

For deleting project
*Auto deleting project-name-image and project-name-container*

```sh
delete.sh *project-name*
```

For manual creating docker image

```sh
docker build -t *image-name* .
```

For manual creating docker container

```sh
docker run -tid --name *container-name* -v /some/out/path:/inside/in/container -p 80:80 *image-name*
```