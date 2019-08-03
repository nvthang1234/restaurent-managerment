/**
 * Route Mappings
 * (sails.config.routes)
 *
 * Your routes tell Sails what to do each time it receives a request.
 *
 * For more information on configuring custom routes, check out:
 * https://sailsjs.com/anatomy/config/routes-js
 */

module.exports.routes = {
    'POST /api/v1/user/create': 'UserController.signup',
    'POST /api/v1/user/login': 'UserController.login',
    'POST /api/v1/user/active': 'UserController.active',
    'POST /api/v1/user/resetotp': 'UserController.resetotp',
    'GET /api/v1/user/logout': 'UserController.logout',
    'POST /api/v1/user/rqresetpw': 'UserController.require_resetpw',
    'POST /api/v1/user/get': 'UserController.findUser',
    'POST /api/v1/user/delete': 'UserController.delete',
    'POST /api/v1/user/changepw': 'UserController.changepw',
};
