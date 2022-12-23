"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.constant = void 0;
const dotenv_1 = require("dotenv");
(0, dotenv_1.config)();
exports.constant = {
    expiresIn: "2h",
    refreshIn: "3d",
    secretKey: process.env.SECRET_KEY,
    adminAvatar: process.env.ADMIN_AVATAR,
    accessToken: process.env.ACCESS_TOKEN,
    refreshToken: process.env.REFRESH_TOKEN,
    cipherSecretKey: process.env.CIPHER_SECRET_KEY,
    cryptoSecretKey: process.env.CRYPTO_SECRET_KEY,
};
//# sourceMappingURL=constant.config.js.map