var passport = require('passport'),
  LocalStrategy = require('passport-local').Strategy,
  bcrypt = require('bcrypt')


passport.use(new LocalStrategy(
  async (username, password, done) => {

    let foundUser;
    try {
      console.log('username', username)
      console.log('password', password)
      foundUser = await User.findOne({
        email: username
      });
    } catch (error) {
      return done(error);
    }

    if (!foundUser) {
      return done(false, null, {
        message: 'Incorrect username.'
      });
    }

    bcrypt.compare(password, foundUser.password, (err, res) => {
      if (err) {
        return done(error);
      }

      if (!res) {
        return done(false, null, {
          message: "incorrectCredentials"
        });
      }

      return done(false, foundUser);
    });
  }


));
