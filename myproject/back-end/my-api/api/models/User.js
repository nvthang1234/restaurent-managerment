/**
 * User.js
 *
 * @description :: A model definition represents a database table/collection.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */
var bcrypt = require('bcrypt');

module.exports = {

  attributes: {

    email:{
      type:"string",
      required:true,
      unique:true
    },

    password:{
      type:"string",
      columnName: 'hashedPassword',
      protect:true
    },

    firstname:{
      type:"string",
      required:true
    },

    lastname:{
      type:"string",
      required:true
    },
    
    phone_number:{
      type:"number"
    },
    
    role:{
      model:"role",
    },
    deletedAt:{
      type:"number"
    }
  },
  
  customToJSON: function () {
    return _.omit(this, ['password'])
  },
  beforeCreate: function (values, next) {

    console.log('values.password', values.password)
    // encrypt password
    bcrypt.genSalt(10, function (err, salt) {
      if (err) next(true);
      bcrypt.hash(values.password, salt, function (err, hash) {
        if (err) return next(err);
        values.hashedPassword = hash;
        delete values.password;
        next();
      });
    });
  },
  beforeUpdate:function (values, next) {

    console.log('values.password', values.password)
    // encrypt password
    bcrypt.genSalt(10, function (err, salt) {
      if (err) next(true);
      bcrypt.hash(values.password, salt, function (err, hash) {
        if (err) return next(err);
        values.hashedPassword = hash;
        delete values.password;
        next();
      });
    });
  }
  
};

