const getData = require('../../models/product/getProductWithID.js')
const getImages = require('../../models/product/getProductImages.js')

const getProductWithID = async (req, res, next) => {
    var dataValue = await getData(req.params.ID)
    var getImagesValue = await getImages(req.params.ID)
    res.status('200').json({
        product:dataValue,
        images:getImagesValue
    });
}
module.exports = getProductWithID