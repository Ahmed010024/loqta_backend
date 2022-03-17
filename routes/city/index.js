var express = require('express');
var app = express();

const getAllCities = require('../../controller/city/getAllCities')

app.get('/', getAllCities);

module.exports = app