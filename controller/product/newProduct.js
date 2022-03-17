const getData = require('../../models/product/newProduct')
const newImages = require('../../models/product/newImages.js')
const insertImages = require('../../models/product/insertImages.js')

const getAllProduct = async (req, res, next) => {
    var dataValue = await getData(req.fields,req.user.ID)
    var newImagesValue = await newImages(req.files)
    var insertImagesValue = await insertImages(dataValue.insertId,newImagesValue)
    res.status('200').json({"product":insertImagesValue});
}
module.exports = getAllProduct