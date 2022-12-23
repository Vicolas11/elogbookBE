"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const logger = {
    success(message, data) {
        console.log('\x1b[32m%s\x1b[0m', `\n${message} ${data !== null && data !== void 0 ? data : ''}\n`);
    },
    error(message, data) {
        console.log('\x1b[31m%s\x1b[0m', `\n${message} ${data !== null && data !== void 0 ? data : ''}\n`);
    },
    info(message, data) {
        console.log('\x1b[34m%s\x1b[0m', `\n${message} ${data !== null && data !== void 0 ? data : ''}\n`);
    },
    successBg(message, data) {
        console.log('\x1b[42m%s\x1b[0m', `\n${message} ${data !== null && data !== void 0 ? data : ''}\n`);
    },
    errorBg(message, data) {
        console.log('\x1b[41m%s\x1b[0m', `\n${message} ${data !== null && data !== void 0 ? data : ''}\n`);
    },
    infoBg(message, data) {
        console.log('\x1b[44m%s\x1b[0m', `\n${message} ${data !== null && data !== void 0 ? data : ''}\n`);
    },
};
exports.default = logger;
//# sourceMappingURL=logger.util.js.map