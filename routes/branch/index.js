var express = require('express');
var app = express();

const getAllBranch = require('../../controller/branch/getAllBranch')

app.get('/', getAllBranch);

module.exports = app