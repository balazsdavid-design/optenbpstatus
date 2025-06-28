const cds = require("@sap/cds");
class OptenService extends cds.ApplicationService {

    async init(){
        this.after("READ","BPStatuses",async(results, req) => {
            for(let each of results){
                
                if(each.OptenStatus == null){
                    each.OptenStatus = { StatusText : "A cég nem található"}
                }
                if(each.OptenStatus_ID != 0){
                    each.LockSuggested = true
                }
            }
            
        })

        const xsenv = require('@sap/xsenv');
        xsenv.loadEnv();
        const bpApi = await cds.connect.to('API_BUSINESS_PARTNER')
        const { A_BusinessPartner, A_Customer, A_Supplier } = bpApi.entities
        this.on("MarkForDeletion", async(req) => {
            var id = req.params[0].ID
            console.log(req.params[0].ID) 
            try {
                await bpApi.run(UPDATE(A_Customer).where({Customer:id}).set({DeletionIndicator:true}))
            }
            catch(error){
                
            }
            try {
                await bpApi.run(UPDATE(A_Supplier).where({Supplier:id}).set({DeletionIndicator:true})) 
            }
            catch(error){

            }
         
           
        //const cust = await bpApi.run(SELECT.from('A_Customer'))
       // console.log(cust)
            
        })

        return super.init()
    }
}


module.exports = OptenService