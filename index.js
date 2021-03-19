var express = require("express");
var database = require("./database");
var cors = require("cors");
var accountDao = require("./DAO/AccountDAO");
var bodyParser = require('body-parser');
var app = express();
app.listen(5000);
app.use(cors())
var urlencodedParser = bodyParser.urlencoded({ extended: false });

/*app.get("/word",function(request,response){
//response.send('<h1 style="color:red;"> Phong lê </h1>');
const a="0";
database.getall(a);
});*/
app.get("/account", function(request, response) {
    //response.send('<h1 style="color:red;"> Phong lê </h1>');
    accountDao.getAllAccount(function(resultQuery) {
        response.json(resultQuery);
    });
});

app.post("/word", urlencodedParser, async function(request, response) {
    var username = request.body.username;
    var password = request.body.password;
    try {
        var temp = await accountDao.getOneAccount(username, password);
        console.log(temp);
        response.send(temp);
    } catch (error) {
        console.log(error)
    }

    //response.json(temp);
});


app.get("/word/:id", function(request, response) {
    var id = request.params.id;
    response.send('<h1 style="color:red;"> Phong lê' + id + ' </h1>');
});