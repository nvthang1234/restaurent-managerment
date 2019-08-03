/**
 * Res.js
 */
const datetime = require('node-datetime')
module.exports = {
  success: function (body, message) {
    var response = {
      success: true,
      data: body,
      message: message.message
    }
    sails.log(response.message + ' at ' + datetime.create().format('Y-m-d H:M:S'));
    return response;
  },
  error: function (body, message) {
    var response = {
      success: false,
      data: body,
      message: message.message
    }
    sails.log(response.message + ' at ' + datetime.create().format('Y-m-d H:M:S') + '. Error: ' + body);
    return response;
  }

};
