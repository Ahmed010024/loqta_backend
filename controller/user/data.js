const getData = require('../../models/user/data.js')
var jwt = require('jsonwebtoken');
const auth  = async (req, res, next) => {
    var userID = jwt.verify(req.headers.authorization, 'l8ta');
    var dataValue = await getData(userID.ID)

    res.status('200').json({"user":dataValue});
}
module.exports = auth 