"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.deleteCloudinary = void 0;
const env_config_1 = require("../configs/env.config");
const cloudinary_1 = __importDefault(require("cloudinary"));
const { cloud_name, api_key, api_secret } = env_config_1.envConfig;
cloudinary_1.default.v2.config({
    api_key,
    api_secret,
    cloud_name
});
const deleteCloudinary = (imgURL) => {
    return new Promise(async (resolve, reject) => {
        try {
            const splitedURL = imgURL === null || imgURL === void 0 ? void 0 : imgURL.split("/");
            const folder = splitedURL[7];
            const fileName = splitedURL[8].split(".")[0];
            const public_id = `${folder}/${fileName}`;
            const destroy = cloudinary_1.default.v2.uploader.destroy(public_id);
            const response = await destroy;
            resolve(response === null || response === void 0 ? void 0 : response.result);
        }
        catch (err) {
            return reject(err);
        }
    });
};
exports.deleteCloudinary = deleteCloudinary;
//# sourceMappingURL=cloudinary.util.js.map