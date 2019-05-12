const mysql = require ('mysql');
const express = require('express');
var app = express();
const bodyparser = require('body-parser');
const pool = mysql.createPool("config");
module.exports = pool;

app.use(express.static('public'));
app.use(bodyparser.json());

 var mysqlConnection = mysql.createConnection({
 	host: 'localhost',
 	user : 'root',
 	port: 7584,
 	password: '42515362',
 	database: 'cafe',
 	multipleStatements: true
 });

 mysqlConnection.connect((err)=>{
 	if(!err)
 		console.log('Connceted');
 	else
 		console.log('error' + JSON.stringify(err, undefined, 2));
 });
 app.listen(8000, () => console.log('Express server is runnig at port no : 8000'));


app.get('/getFavouriteItem/:sub_category', (req, res) => {
    mysqlConnection.query('call getFavouriteItem(?)', [req.params.sub_category], (err, rows) => {
        if (!err)
        res.send(res);
        else
            console.log(err);
    })
});


app.get('/getOrderdetail/:SSN', (req, res) => {
    mysqlConnection.query('call getOrderdetail(?)', [req.params.SSN], (err, rows) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

app.get('/getOrderdetails', (req, res) => {
    mysqlConnection.query('SELECT * FROM orderdetails, orders', (err, rows) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

app.get('/getOrderdetails/:order_id', (req, res) => {
    mysqlConnection.query('call getOrderdetails(?)', [req.params.order_id], (err, rows) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

app.get('/getProducts', (req, res) => {
    mysqlConnection.query('SELECT * FROM menu', (err, rows) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

app.get('/getProducts/:category', (req, res) => {
    mysqlConnection.query('call getProductbyCategory(?)', [req.params.category], (err, rows, fields) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});