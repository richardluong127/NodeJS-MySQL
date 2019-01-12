var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "lol127",
    database: "bamazon"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("Welcome to Bamazon!");
    start();
});

var start = function () {
    connection.query("SELECT * FROM products", function (err, res) {
        for (var i = 0; i < res.length; i++) {
            console.log(res[i].item_id + " || " + res[i].product_name + " || Dept: " + res[i].department_name + " || Price: " + res[i].price + " || Qty Avail: " + res[i].stock_quantity + "\n");
        }
        askCustomer(res);
    })
}

var askCustomer = function (res) {
    inquirer
        .prompt({
            type: "input",
            name: "choice",
            message: "What would you like to purchase?  [N for Next Time]",

        }).then(function (answer) {

            for (var i = 0; i < res.length; i++) {
                if (res[i].product_name === answer.choice) {
                    var id = i;
                    inquirer.prompt([{
                        type: "input",
                        name: "quantity",
                        message: "How many would you like to buy?",
                        validate: function (value) {
                            if (isNaN(value) === false) {
                                return true;
                            }
                            return false;
                        }
                    }]).then(function (answer) {
                        var newQty = res[id].stock_quantity - answer.quantity;
                        if (newQty > 0) {
                            connection.query("UPDATE products SET ? WHERE ?",
                                [{
                                    stock_quantity: newQty
                                },
                                {
                                    product_name: answer.choice
                                }]
                                ,
                                function (err) {
                                    if (err) throw err;
                                    console.log("Item successfully purchased!");
                                    start();
                                }
                            )
                        } else {
                            console.log("Not enough quantity on hand!");
                            askCustomer();
                    }}
                    )
                }
            }
        })
}

