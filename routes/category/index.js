var express = require('express');
var app = express();

const getAllCateg = require('../../controller/categ/getAllCateg')
const getCategWithBranch = require('../../controller/categ/getCategWithBranch.js')

app.get('/:branch', getCategWithBranch);
app.get('/', getAllCateg);

module.exports = app