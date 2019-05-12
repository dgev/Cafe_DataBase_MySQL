var express = require('express');
var multer  =   require('multer');
var mime    =   require('mime');
var mysql = require('mysql');
var app = express();
var bodyParser =    require("body-parser");
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  port      : 7584,
  password : '42515362',
  database : 'cafe'
});
var products;

connection.connect(function(err){
if(!err) {
    console.log("Database is connected");    
} else {
    console.log("Error connecting database ");    
}
});

app.get('/index.html', function(req, res){
    res.sendFile(__dirname + '/' + 'index.html');
    //res.send(rows);
    //console.log(rows);
 
});
app.post("/postFormAngular", function (req, res) {
    connection.query('call getFavouriteItem(?)', req.body.sub_category, (err, rows) => {
    console.log(req.body.sub_category);
    res.send(rows[0]);
    })
});
app.post("/postFormAngular1", function (req, res) {
    connection.query('call getOrderdetail(?)', req.body.SSN, (err, rows) => {
    console.log(req.body.SSN);
    res.send(rows[0]);
    })
});
app.post("/postFormAngular2", function (req, res) {
    connection.query('call getOrderdetails(?)', req.body.order_id, (err, rows) => {
    console.log(req.body.order_id);
    res.send(rows[0]);
    })
});
app.post("/postFormAngular3", function (req, res) {
    connection.query('call getProductbyCategory(?)', req.body.category_name, (err, rows) => {
    console.log(req.body.category_name);
    res.send(rows[0]);
    })
});
app.listen(3000);