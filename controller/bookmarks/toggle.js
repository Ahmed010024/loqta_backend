const toggle = require('../../models/bookmarks/toggle.js')
const getAllBranch = async (req, res, next) => {
    console.log(req.user)
    const {product} = req.query
    var dataValue = await toggle(req.user.ID,product)
    res.status('200').json({"branch":dataValue});
}
module.exports = getAllBranch