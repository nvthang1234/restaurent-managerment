
module.exports.sendWelcomeMail = function (obj, otp, next) {
  if (next === "resign") {
    sails.hooks.email.send(
      "sendMailSignup",
      {
        recipientName: obj.lastname + " " + obj.firstname,
        otp: otp,
      },
      {
        to: obj.email,
        subject: "Confirm OTP"
      },
      async function (err) {
        if (!err) {
          let data = {
            otp: otp,
            owner: obj.id,
            otp_expiretime: new Date().getTime() + 300000
          };
          await Otp.create(data).fetch();
        }
        console.log(err || "It worked!");
      }
    )
  }
  else {
    sails.hooks.email.send(
      "sendMailResetPassword",
      {
        recipientName: obj.lastname + " " + obj.firstname,
      },
      {
        to: obj.email,
        subject: "Confirm reset password"
      },
      async function (err) {
        console.log(err || "It worked!");

      }
    )
  }
}