const { json } = require("body-parser");
// hàm get row data

exports.getRow = function(array, numberRow) {
    var tmp = new Array()
    if (array.length < numberRow) {
        for (var i = 0; i < array.length; i++) { tmp.push(array[i]) }
    } else {
        for (var i = 0; i < numberRow; i++) { tmp.push(array[i]) }
    }
    return tmp
}

// hàm lấy ngày hiện tại

exports.getDateNow = function(numberDate) {
    let dateNow = Date.now() - (24 * 60 * 60 * 1000) * numberDate
    let dateTmp = new Date(dateNow)
    var dateCreatedNow = dateTmp.getFullYear() + '-' + (dateTmp.getMonth() + 1) + '-' + dateTmp.getDate();
    console.log("now :" + dateCreatedNow)
    return dateCreatedNow
}

function checkInArray(number, array) {
    var tmp = false;
    for (var i = 0; i < array.length; i++) {
        if (array[i] == number) {
            tmp = true
        }
    }
    return tmp;
}

function getRanDom(max, array) {
    var number = Math.floor(Math.random() * max);
    if (checkInArray(array, number) == false) {
        return number
    } else {
        return getRanDom(max, array)
    }


}
exports.getDataAnswer = function(tmp, results) {
    var data = "";
    for (var indexTmp = 0; indexTmp < 4; indexTmp++) {
        var number = getRanDom(results.length, tmp)

        tmp.push(number)

        if (indexTmp == 3) {
            data += results[number]

        } else {
            data += results[number] + ";"

        }
    }
    return data
}