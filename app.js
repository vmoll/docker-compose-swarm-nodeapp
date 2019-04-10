const express = require('express');
const app = express();
// Multicore part
var cluster = require('cluster');
var http = require('http');
var numCPUs = require('os').cpus().length;

if (cluster.isMaster) {
    // Fork workers.
    for (var i = 0; i < numCPUs; i++) {
        cluster.fork();
    }
    cluster.on('exit', function(worker, code, signal) {
        console.log('worker ' + worker.process.pid + ' died');
    });
} else {
    // Workers can share any TCP connection
    // In this case its a HTTP server
    http.createServer(function(req, res) {
        res.writeHead(200);
        res.end("hello world\n");
    }).listen(3000);

	app.get('/', function (req, res) {
		res.send('Hello World!');
	});
	
	//app.listen(3000, function () {
//		console.log('Example app listening on port 3000!');
//	});
}