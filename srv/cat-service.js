const cds = require("@sap/cds");

module.exports = async (srv) => {

const {Retailers, Orders} = srv.entities;

//==========Bounded function implementation ========== 

// srv.on("READ", async req => { 
//    const result = await cds.run(req.query);
//    console.log("RESULT==========",result);
//    return result;
// })

//=======================Action=====================
srv.on("getAllShop", async (req) => {
   const { id } = req.data;
   const db = srv.transaction(req);
   let { Retailers } = srv.entities;
   const results = await db.read(Retailers);
   return results;
});

//===============Function==================================

srv.on("getShopDetails", async (req) => {
   const { id } = req.data;
   const db = srv.transaction(req);
   let { Retailers } = srv.entities;
   const results = await db.read(Retailers).where({ mobileNumber: id });
   return results;
});


//======================CRUD Operation==============================

srv.on('CREATE', Orders, async (req) => {
   const randm10 = (Math.random() * 10).toString();
   const ordNum = randm10.substring(randm10.length - 10);
   var newOrder = req.data;
   newOrder.orderNumber=ordNum;
   const result = await cds.transaction(req).run(
       INSERT.into(Orders).entries(newOrder)
   );
   const res = await cds.transaction(req).run(SELECT.one(Orders).where({ orderNumber: newOrder.orderNumber }));
   return res;
});



    // CREATE operation
//     srv.on('CREATE', Retailers, async (req) => {
//       const newCustomer = req.data;
//       const result = await cds.transaction(req).run(
//           INSERT.into(Retailers).entries(newCustomer)
//       );
//       return result;
//   });

  // READ operation
//   srv.on('READ', Retailers, async (req) => {
//       const Retailers = await cds.transaction(req).run(
//           SELECT.from(Retailers)
//       );
//       return Retailers;
//   });

  // UPDATE operation
//   srv.on('UPDATE', Retailers, async (req) => {
//       const mobileNumber = req.params[0];
//       const updatedCustomer = req.data;
//       const result = await cds.transaction(req).run(
//           UPDATE(Retailers).set(updatedCustomer).where({mobileNumber: mobileNumber})
//       );
//       return result;
//   });

  // DELETE operation
//   srv.on('DELETE', Retailers, async (req) => {
//       const mobileNumber = req.params[0];
//       const result = await cds.transaction(req).run(
//           DELETE.from(Retailers).where({mobileNumber: mobileNumber})
//       );
//       return result;
//   });

}