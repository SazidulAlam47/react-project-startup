const secret = require('crypto').randomBytes(64).toString('hex');
console.log("ACCESS_TOKEN_SECRET=" + secret);