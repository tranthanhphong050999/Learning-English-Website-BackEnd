var express = require("express");
var database = require("./database");
var cors = require("cors");
var accountDao = require("./DAO/AccountDAO");
var bodyParser = require('body-parser');
var app = express();
app.listen(5000);
app.use(cors())
var urlencodedParser = bodyParser.urlencoded({ extended: false });

//*********ACCOUNT */

app.get("/account/getall", function(request, response) {

    accountDao.getAllAccount(function(resultQuery) {
        response.json(resultQuery);
    });
});
app.get("/account/getone/:id", async function(request, response) {
    var AC_Id = request.params.id;
    try {
        var temp = await accountDao.getOneAccountById(AC_Id)
        response.json(temp)
    } catch (error) {

    }
})
app.post("/account/login", urlencodedParser, async function(request, response) {
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
app.post("/account/add", urlencodedParser, async function(request, response) {
    var AC_userName = request.body.AC_userName;
    var AC_fullName = request.body.AC_fullName;
    var AC_Email = request.body.AC_Email;
    var AC_Streak = (request.body.AC_Streak != "") ? request.body.AC_Streak : 0;
    var AC_Exp = (request.body.AC_Exp != "") ? request.body.AC_Exp : 0;
    var AC_State = (request.body.AC_State != "") ? request.body.AC_State : 0;
    var AC_Role = (request.body.AC_Role != "") ? request.body.AC_Role : 0;
    var AC_idExpOfOneDay = (request.body.AC_idExpOfOneDay != "") ? request.body.AC_idExpOfOneDay : 0;
    var AC_passWord = request.body.AC_passWord;
    try {
        var temp = await accountDao.addAccount(AC_userName, AC_fullName, AC_Email, AC_Streak, AC_Exp, AC_State, AC_Role, AC_idExpOfOneDay, AC_passWord)
        response.send(temp);
    } catch (error) {
        console.log(error)
    }

});

app.get("/account/delete/:id", async function(request, response) {
    var AC_Id = request.params.id;
    try {
        var temp = await accountDao.deleteAccountById(AC_Id)
        response.send(temp)
    } catch (error) {

    }
})

app.post("/account/update", urlencodedParser, async function(request, response) {
    var AC_Id = request.body.AC_Id;
    var AC_userName = request.body.AC_userName;
    var AC_fullName = request.body.AC_fullName;
    var AC_Email = request.body.AC_Email;
    var AC_Streak = (request.body.AC_Streak != "") ? request.body.AC_Streak : 0;
    var AC_Exp = (request.body.AC_Exp != "") ? request.body.AC_Exp : 0;
    var AC_State = (request.body.AC_State != "") ? request.body.AC_State : 0;
    var AC_Role = (request.body.AC_Role != "") ? request.body.AC_Role : 0;
    var AC_idExpOfOneDay = (request.body.AC_idExpOfOneDay != "") ? request.body.AC_idExpOfOneDay : 0;
    var AC_passWord = request.body.AC_passWord;
    try {
        var temp = await accountDao.updateAccount(AC_Id, AC_userName, AC_fullName, AC_Email, AC_Streak, AC_Exp, AC_State, AC_Role, AC_idExpOfOneDay, AC_passWord)
        response.send(temp);
    } catch (error) {
        console.log(error)
    }

});
app.get("/word/:id", function(request, response) {
    var id = request.params.id;
    response.send('<h1 style="color:red;"> Phong lê' + id + ' </h1>');
});