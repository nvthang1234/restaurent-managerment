/**
 * Otp.js
 *
 * @description :: A model definition represents a database table/collection.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    
    otp: { 
      type: 'number',
    },
    otp_expiretime: { type: 'number' },

    owner: {
      model: 'user'
    }
  },
};

