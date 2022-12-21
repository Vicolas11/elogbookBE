"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.envConfig = void 0;
const dotenv_1 = require("dotenv");
(0, dotenv_1.config)();
const ENV = process.env.NODE_ENV || "development";
exports.envConfig = {
    test: ENV === "test",
    dev: ENV === "development",
    prod: ENV === "production",
    url: process.env.BASE_URL,
    api_key: process.env.API_KEY,
    api_secret: process.env.API_SECRET,
    cloud_name: process.env.CLOUD_NAME,
    default_img: process.env.DEFAULT_IMG,
    port: +process.env.PORT || 8080
};
//# sourceMappingURL=env.config.js.map