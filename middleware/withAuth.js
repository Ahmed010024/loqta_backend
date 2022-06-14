const getData = require('../models/user/data.js')
var jwt = require('jsonwebtoken');
const auth  = async (req, res, next) => {
            var userID = 0
            console.log(req.headers.authorization)
            if(req.headers.authorization != "undefined"){
                var userID = jwt.verify(req.headers.authorization, 'l8ta');
            }
            req.user = userID
            console.log(userID,"userID","rwar")
            next();

        
        

        // if(userID){
        //     var dataValue = await getData(userID.ID)
        //     if(dataValue){
        //         req.user = dataValue;
        //         next();
        //     }else{
        //         req.status(304).send("acccess Failed")
        //     }
        // }else{
        //     // req.user = 0;
        //     // next();
        // }

  
  
    
}
module.exports = auth 