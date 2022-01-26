const sql = require('../db');

module.exports = class Customer {
    //constructor
    constructor() {
    }

    create(newCustomer, cbResult) {
        sql.query('INSERT INTO customer SET ?', newCustomer, (err,result) => {
            if (err){
                console.log('error: ',err);
                cbResult(err,null);
                return;
            }
            console.log('created feedback: ', {id: result.insertId, ...newCustomer});
            cbResult(null,{
                msg: "New feedback has been inserted!", id: result.insertId, ...newCustomer});
            })

    }

    /**
     * Get all customers
     * @param cbResult: result of sql statement
     */
    getAll(cbResult){
       sql.query('SELECT * FROM customer', (err,result) => {
           if (err){
               console.log("error: ", err);
               //err zurückgeben, data = null
               cbResult(err, null);
               return;
           }
           console.log("customer: ", result);
           //err = null, data zurückgeben
           cbResult(null, result);
       })
    }

    /**
     * Update customer by ID
     * @param id: customer ID
     * @param customer: customer object literal
     * @param cbResult: result of sql statement
     */
    updateById(id,customer, cbResult){
        let queryString = 'Update customer SET email = ?, firstName = ?, surname = ?, canton = ?, postalcode = ?, country = ?, date = ?, feedback = ?';
        queryString += ' WHERE id = ?';
        sql.query(queryString,
            [customer.email, customer.firstName, customer.surname, customer.canton, customer.postalcode, customer.country, customer.date, customer.feedback, parseInt(id)],
            (err, result) => {
                if (err){
                    console.log("error: ", err);
                    //err zurückgeben, data = null
                    cbResult(err, null);
                    return;
                }

                if (result.affectedRows === 0){
                    // not found customer with the id
                    cbResult({kind: "not_found"}, null);
                    return;
                }

                console.log("updated customer: ", {id: id, ...customer});
                //err = null, data zurückgeben
                cbResult(null, {id: id, ...customer});

            });
    }
}
