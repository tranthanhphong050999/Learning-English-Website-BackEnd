var express = require("express");
var database = require("./database");
var cors = require("cors");
var accountDao = require("./DAO/AccountDAO");
var wordDao = require("./DAO/WordDAO");
var wordBookDao = require("./DAO/WordBookDAO")
var bodyParser = require('body-parser');
var app = express();
var session = require('express-session');
const md5 = require('md5')
app.use(session({
    resave: true,
    saveUninitialized: true,
    secret: 'somesecret',
    cookie: { maxAge: 60000 }
}));
app.listen(5000);
app.use(cors())
var urlencodedParser = bodyParser.urlencoded({ extended: false });

//*********ACCOUNT */

// Lấy tất cả account

app.get("/account/getall", function(request, response) {

    accountDao.getAllAccount(function(resultQuery) {
        response.json(resultQuery);

    });
});

// Lấy account theo id

app.get("/account/getone/:id", async function(request, response) {
    var AC_Id = request.params.id;
    try {
        var temp = await accountDao.getOneAccountById(AC_Id)
        response.json(temp)
    } catch (error) {

    }
})

// Đăng nhập

app.post("/account/login", urlencodedParser, async function(request, response) {
    var username = request.body.username;
    var password = request.body.password;
    try {
        var passWordMd5 = md5(password + "05101999")
        var temp = await accountDao.login(username, passWordMd5);


        console.log(temp)
        console.log(request.session.id)
        if (temp.status) {

            request.session.AC_userName = {
                AC_userName: temp.AC_userName
            }
            var tmp = await accountDao.addSession(temp.AC_userName, temp.AC_passWord, request.session.id)
            response.send({
                status: true,
                data: tmp
            });
        } else {
            response.send({
                status: false,
                data: tmp
            });
        }




    } catch (error) {
        console.log(error)
    }

});

app.get('/getSession', (req, res) => {
    //check session
    if (req.session.AC_userName) {
        console.log(req.session.id)
        return res.status(200).json({ status: 'success', session: req.session.AC_userName })
    }
    return res.status(200).json({ status: 'error', session: 'No session' })
})


// Thêm account

app.post("/account/add", urlencodedParser, async function(request, response) {

    var AC_fullName = request.body.AC_fullName;
    var AC_Email = request.body.AC_Email;
    var AC_Streak = (request.body.AC_Streak) ? request.body.AC_Streak : 0;
    var AC_Exp = (request.body.AC_Exp) ? request.body.AC_Exp : 0;
    var AC_State = (request.body.AC_State) ? request.body.AC_State : 0;
    var AC_Role = (request.body.AC_Role) ? request.body.AC_Role : 0;
    var AC_idExpOfOneDay = (request.body.AC_idExpOfOneDay) ? request.body.AC_idExpOfOneDay : 0;
    var AC_passWord = request.body.AC_passWord;
    try {
        var temp = await accountDao.addAccount(AC_fullName, AC_Email, AC_Streak, AC_Exp, AC_State, AC_Role, AC_idExpOfOneDay, AC_passWord)
        response.send(temp);
    } catch (error) {
        console.log(error)
    }

});

// Xóa

app.get("/account/delete/:id", async function(request, response) {
    var AC_Id = request.params.id;
    try {
        var temp = await accountDao.deleteAccountById(AC_Id)
        response.send(temp)
    } catch (error) {

    }
})

// Sửa

app.post("/account/update", urlencodedParser, async function(request, response) {
    var AC_Id = request.body.AC_Id;
    var AC_userName = request.body.AC_userName;
    var AC_fullName = request.body.AC_fullName;
    var AC_Email = request.body.AC_Email;
    var AC_Streak = (request.body.AC_Streak) ? request.body.AC_Streak : 0;
    var AC_Exp = (request.body.AC_Exp) ? request.body.AC_Exp : 0;
    var AC_State = (request.body.AC_State) ? request.body.AC_State : 0;
    var AC_Role = (request.body.AC_Role) ? request.body.AC_Role : 0;
    var AC_idExpOfOneDay = (request.body.AC_idExpOfOneDay) ? request.body.AC_idExpOfOneDay : 0;
    var AC_passWord = request.body.AC_passWord;
    try {
        var temp = await accountDao.updateAccount(AC_Id, AC_userName, AC_fullName, AC_Email, AC_Streak, AC_Exp, AC_State, AC_Role, AC_idExpOfOneDay, AC_passWord)
        response.send(temp);
    } catch (error) {
        console.log(error)
    }

});

//************--- WORD ---*******/

// Lấy tất cả word

app.get("/word/getall", async function(request, response) {
    try {
        var temp = await wordDao.getAllWord();
        response.json(temp)
    } catch (error) {

    }
})

// lấy 1 word theo id

app.get("/word/getone/:id", async function(request, response) {
    var W_Id = request.params.id;
    try {
        var temp = await wordDao.getOneWordById(W_Id)
        response.json(temp)
    } catch (error) {

    }
})

// lấy tất cả word theo idwordbook

app.get("/word/getallbyidwordbook/:id", async function(request, response) {
    var W_idWordBook = request.params.id;
    try {
        var temp = await wordDao.getAllWordByIdWordBook(W_idWordBook)
        response.json(temp)
    } catch (error) {

    }
})

// Lấy 4 word theo idwordbook

app.get("/word/getfourbyidwordbook/:id", async function(request, response) {
        var W_idWordBook = request.params.id;
        try {
            var temp = await wordDao.getFourWordByIdWordBook(W_idWordBook)
            response.json(temp)
        } catch (error) {

        }
    })
    // Thêm word

app.post("/word/add", urlencodedParser, async function(request, response) {
    var W_originalWord = request.body.W_originalWord
    var W_translatedWord = request.body.W_translatedWord
    var W_Phrase = request.body.W_Phrase
    var W_phraseMean = request.body.W_phraseMean
    var W_Avatar = request.body.W_Avatar
    var W_learnTimes = request.body.W_learnTimes
    var W_dateCreated = request.body.W_dateCreated
    var W_Degree = request.body.W_Degree
    var W_linkPost = request.body.W_linkPost
    var W_idVocabularyState = request.body.W_idVocabularyState
    var W_idWordBook = request.body.W_idWordBook
    var W_idLearningNumberDay = request.body.W_idLearningNumberDay
    var W_idCustomDegree = request.body.W_idCustomDegree
    var W_idState = request.body.W_idState
    var W_wrongTimes = request.body.W_wrongTimes
    try {
        var temp = await wordDao.addWord(W_originalWord, W_translatedWord, W_Phrase, W_phraseMean, W_Avatar, W_learnTimes, W_dateCreated, W_Degree, W_linkPost, W_idVocabularyState, W_idWordBook, W_idLearningNumberDay, W_idCustomDegree, W_idState, W_wrongTimes)
        response.send(temp);
    } catch (error) {
        console.log(error)
    }

});

// Sửa Word

app.post("/word/update", urlencodedParser, async function(request, response) {
    var W_Id = request.body.W_Id
    var W_originalWord = request.body.W_originalWord
    var W_translatedWord = request.body.W_translatedWord
    var W_Phrase = request.body.W_Phrase
    var W_phraseMean = request.body.W_phraseMean
    var W_Avatar = request.body.W_Avatar
    var W_learnTimes = request.body.W_learnTimes
    var W_dateCreated = request.body.W_dateCreated
    var W_Degree = request.body.W_Degree
    var W_linkPost = request.body.W_linkPost
    var W_idVocabularyState = request.body.W_idVocabularyState
    var W_idWordBook = request.body.W_idWordBook
    var W_idLearningNumberDay = request.body.W_idLearningNumberDay
    var W_idCustomDegree = request.body.W_idCustomDegree
    var W_idState = request.body.W_idState
    var W_wrongTimes = request.body.W_wrongTimes
    try {
        var temp = await wordDao.updateWord(W_Id, W_originalWord, W_translatedWord, W_Phrase, W_phraseMean, W_Avatar, W_learnTimes, W_dateCreated, W_Degree, W_linkPost, W_idVocabularyState, W_idWordBook, W_idLearningNumberDay, W_idCustomDegree, W_idState, W_wrongTimes)
        response.send(temp);
    } catch (error) {
        console.log(error)
    }

});

// Xóa Word

app.get("/word/delete/:id", async function(request, response) {
    var W_Id = request.params.id;
    try {
        var temp = await wordDao.deleteWordById(W_Id)
        response.send(temp)
    } catch (error) {

    }
})

// Xóa word theo id wordbook

app.get("/word/deletebyidwordbook/:id", async function(request, response) {
    var W_idWordBook = request.params.id;
    try {
        var temp = await wordDao.deleteWordByIdWordBook(W_idWordBook)
        response.send(temp)
    } catch (error) {

    }
})

//************--- WORDBOOK---***********/

// Lấy tất cả wordbook

app.get("/wordbook/getall", async function(request, response) {
    try {
        var temp = await wordBookDao.getAllWordBook()
        response.json(temp)
    } catch (error) {

    }
})

// lấy tất cả wordbook theo idaccount

app.get("/wordbook/getallbyidaccount/:id", async function(request, response) {
    var WB_idAccount = request.params.id
    try {
        var temp = await wordBookDao.getAllWordBookByIdAccount(WB_idAccount)
        response.json(temp)
    } catch (error) {

    }
})

// Lấy 1 wordbook theo id

app.get("/wordbook/getone/:id", async function(request, response) {
    var WB_Id = request.params.id
    try {
        var temp = await wordBookDao.getOneWordBookById(WB_Id)
        response.json(temp)
    } catch (error) {

    }
})

// Thêm wordbook

app.post("/wordbook/add", urlencodedParser, async function(request, response) {
    var WB_Name = request.body.WB_Name
    var WB_idAccount = request.body.WB_idAccount
    try {
        var temp = await wordBookDao.addWordBook(WB_Name, WB_idAccount)
        response.send(temp);
    } catch (error) {
        console.log(error)
    }

});

// Sửa wordBook

app.post("/wordbook/update", urlencodedParser, async function(request, response) {
    var WB_Id = request.body.WB_Id
    var WB_Name = request.body.WB_Name
    var WB_idAccount = request.body.WB_idAccount
    try {
        var temp = await wordBookDao.updateWordBook(WB_Id, WB_Name, WB_idAccount)
        response.send(temp);
    } catch (error) {
        console.log(error)
    }

});

// Xóa wordbook theo id

app.get("/wordbook/delete/:id", async function(request, response) {
    var WB_Id = request.params.id
    try {
        var temp = await wordBookDao.deleteWordBookById(WB_Id)
        response.json(temp)
    } catch (error) {

    }
})

// Xóa wordbook theo id account

app.get("/wordbook/deletebyidaccount/:id", async function(request, response) {
    var WB_idAccount = request.params.id
    try {
        var temp = await wordBookDao.deleteWordBookByIdAccount(WB_idAccount)
        response.json(temp)
    } catch (error) {

    }
})

// Lấy wordbook theo tên

app.get("/wordbook/getWordBookByName/:name", async function(request, response) {
    var WB_Name = request.params.name
    try {
        var temp = await wordBookDao.getWordBookByName(WB_Name)
        response.json(temp)
    } catch (error) {

    }
})