"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const uploadPreset = ({ type }) => {
    let preset = "";
    switch (type) {
        case "avatar":
            preset = "Avatar";
            break;
        case "diagrams":
            preset = "Diagrams";
            break;
        case "blogposts":
            preset = "Blogposts";
            break;
        case "chats":
            preset = "Chatts";
            break;
        case "logo":
            preset = "Logoss";
            break;
    }
    return preset;
};
exports.default = uploadPreset;
//# sourceMappingURL=uploadpreset.utils.js.map