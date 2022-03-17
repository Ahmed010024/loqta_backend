var express = require('express');
var app = express();

var areaRouter = require('./area/index')
var branchRouter = require('./branch/index')
var categoryRouter = require('./category/index')
var cityRouter = require('./city/index')
var productRouter = require('./product/index')
var userRouter = require('./user/index')
var subCategRouter = require('./subcateg/index')
var bookmarksRouter = require('./bookmarks/index')

app.use('/area', areaRouter);
app.use('/branch', branchRouter);
app.use('/category', categoryRouter);
app.use('/city', cityRouter);
app.use('/product', productRouter);
app.use('/user', userRouter);
app.use('/subcateg', subCategRouter);
app.use('/bookmarks', bookmarksRouter);



module.exports = app