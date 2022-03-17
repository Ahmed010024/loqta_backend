var express = require('express');
var app = express();

const getAllArea = require('../../controller/area/getAllArea')
const getAreaWithCity = require('../../controller/area/getAreaWithCity')

app.use('/:city', getAreaWithCity);
app.use('/', getAllArea);

module.exports = app