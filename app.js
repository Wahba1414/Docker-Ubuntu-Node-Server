// require the needed packages.
const express = require('express')

//choose the listening port
const app = express();
const port = 8080;

//Add generic route to handle any request.
app.get('/',(req, res) => {
  console.log("Receive new request..")
  res.sendFile( __dirname + "/" + "index.html" );
});


//Serve images.
app.use(express.static(__dirname + '/public'));

//listening...
app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
