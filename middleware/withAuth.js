const getData = require('../models/user/data.js')
var jwt = require('jsonwebtoken');
const auth  = async (req, res, next) => {
    if(req){
        try{
            var userID = jwt.verify(req.headers.authorization, 'l8ta');
        }catch(e){
            res.status(403).send("acccess Failed")
        }
        console.log(userID,"userID")
        if(userID){
            var dataValue = await getData(userID.ID)
            if(dataValue){
                req.user = dataValue;
                next();
            }else{
                req.status(304).send("acccess Failed")
            }
        }
    }else{
        req.status(304).send("acccess Failed")
    }
  
    
}
module.exports = auth 