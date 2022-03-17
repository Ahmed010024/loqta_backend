var express = require('express');
var app = express();

const getAllBranch = require('../../controller/subCateg/getAllSubCateg.js')
const getSubCategWithCateg = require('../../controller/subCateg/getSubCategWithCateg.js')

app.get('/:categ', getSubCategWithCateg);
app.get('/', getAllBranch);

module.exports = app