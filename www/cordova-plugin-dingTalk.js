var exec = require('cordova/exec');

var DingTalk = {
    openDingTalk: function (arg0, success, error) {
        exec(success, error, 'cordova-plugin-dingTalk', 'openDingTalk', [arg0]);
    },
    shareTextToDingTalk: function (arg0, success, error) {
        exec(success, error, 'cordova-plugin-dingTalk', 'shareTextToDingTalk', [arg0]);
    },
    shareImageToDingTalk: function (arg0, success, error) {
        exec(success, error, 'cordova-plugin-dingTalk', 'shareImageToDingTalk', [arg0]);
    },
    shareWebToDingTalk: function (arg0, success, error) {
        exec(success, error, 'cordova-plugin-dingTalk', 'shareWebToDingTalk', [arg0]);
    },
    ssoWithDingTalk: function (arg0, success, error) {
        exec(success, error, 'cordova-plugin-dingTalk', 'ssoWithDingTalk', [arg0]);
    },
}


module.exports = DingTalk;