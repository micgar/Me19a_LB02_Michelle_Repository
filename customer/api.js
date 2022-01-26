const customer = require('./controller');
module.exports = app => {
    //Create a new costumer (SQL-Insert)
    app.post("/customer", customer.create);

    //Retrieve all customers (SQL-SELECT)
    app.get('/customers', customer.findAll);

    //Update a costumer with customerId (SQL-UPDATE)
    app.put('/customer/:id', customer.update);
}