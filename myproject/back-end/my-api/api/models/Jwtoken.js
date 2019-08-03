/**
 * Jwtoken.js
 *
 * @description :: A model definition represents a database table/collection.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

module.exports = {
    attributes: {
    
      token: { 
        type: 'string',
        columnType: 'text'
      },
      issuedAt: { type: 'number' }, 
      expiretime: { type: 'number' },
      isactive: { type: 'boolean' },
  
      // Add a reference to User
      owner: {
        model: 'user'
      },
      deletedAt:{
        type:"number"
      }
    },

};

