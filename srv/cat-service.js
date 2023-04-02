const cds = require("@sap/cds");

module.exports = async (srv) => {

const {Retailers} = srv.entities;

//==========Bounded function implementation ========== 

// srv.on("READ", async req => { 
//    const result = await cds.run(req.query);
//    console.log("RESULT==========",result);
//    return result;
// })
srv.on("getAllShop", async (req) => {
   const { id } = req.data;
   const db = srv.transaction(req);
   let { Retailers } = srv.entities;
   const results = await db.read(Retailers);
   return results;
});
srv.on("getShopDetails", async (req) => {
   const { id } = req.data;
   const db = srv.transaction(req);
   let { Retailers } = srv.entities;
   const results = await db.read(Retailers).where({ mobileNumber: id });
   return results;
});

}