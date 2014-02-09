/**
 * Module dependencies.
 */

var express = require('express')
  , app = express()  
  , server = require('http').createServer(app)
  , path = require('path')
  , io = require('./public/scripts/sockets.js').listen(server)
  , spawn = require('child_process').spawn
  , routes = require('./routes')
  , timer = require('./routes/timer')

// all environments 
app.set('port', process.env.TEST_PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.bodyParser());
app.use(express.methodOverride());
app.use(require("stylus").middleware({
  compress: true,
  src: __dirname + "/public"
}));
app.use(express.static(path.join(__dirname, 'public')));


//Routes
app.get('/', routes.index);
app.get('/timer', timer.timer);

server.listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});

//Run and pipe shell script output 
function run_shell(cmd, args, cb, end) {
    var spawn = require('child_process').spawn,
        child = spawn(cmd, args),
        me = this;
    child.stdout.on('data', function (buffer) { cb(me, buffer) });
    child.stdout.on('end', end);
}

