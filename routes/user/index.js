var express = require('express');
var app = express();

const auth = require('../../controller/user/auth.js')
const sgin = require('../../controller/user/sign')
const data = require('../../controller/user/data.js')

app.post('/auth', auth);
app.post('/sign', sgin);
app.get('/data', data);

module.exports = app