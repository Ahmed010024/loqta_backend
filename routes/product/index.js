var express = require('express');
var app = express();
const formidableMiddleware = require('express-formidable');
var withAuth = require("../../middleware/withAuth")

const getAllProduct = require('../../controller/product/getAllProduct')
const getProductWithUser = require('../../controller/product/getProductWithUser')
const getProductWithBookmark = require('../../controller/product/bookmarks')
const getProductWithID = require('../../controller/product/getProductWithID.js')
const newProduct = require('../../controller/product/newProduct')
const deleteProduct = require('../../controller/product/deleteProduct.js')

app.get('/myproducts',[withAuth], getProductWithUser);
app.get('/bookmarks',[withAuth], getProductWithBookmark);
app.post('/new',[formidableMiddleware(),withAuth] ,newProduct);
app.post('/delete',[withAuth] ,deleteProduct);
app.get('/:ID', getProductWithID);
app.get('/',[withAuth], getAllProduct);

module.exports = app