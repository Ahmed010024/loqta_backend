var express = require('express');
var app = express();
var withAuth = require("../../middleware/withAuth")
const toggle = require('../../controller/bookmarks/toggle.js');


app.get('/toggle',[withAuth], toggle);


module.exports = app