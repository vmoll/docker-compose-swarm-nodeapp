docker stop vmoll/nodejs-image-demo:latest
docker rmi vmoll/nodejs-image-demo:latest
docker build -t vmoll/nodejs-image-demo .
docker run -it -p 3000:3000 -h instance-hostname --rm --name nodejs-image-demo vmoll/nodejs-image-demo:latest
pause;