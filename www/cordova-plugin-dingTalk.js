var exec = require('cordova/exec');

exports.coolMethod = function (arg0, success, error) {
    exec(success, error, 'cordova-plugin-dingTalk', 'coolMethod', [arg0]);
};

var DingTalk = {
    coolMethod: function (arg0, success, error) {
        exec(success, error, 'cordova-plugin-dingTalk', 'coolMethod', [arg0]);
    },
    hasDingTalk: function (arg0, success, error) {
        exec(success, error, 'cordova-plugin-dingTalk', 'coolMethod', [arg0]);
    },
    canOpenDingTalk: function (arg0, success, error) {
        exec(success, error, 'cordova-plugin-dingTalk', 'coolMethod', [arg0]);
    },
    canSsoDingTalk: function (arg0, success, error) {
        exec(success, error, 'cordova-plugin-dingTalk', 'coolMethod', [arg0]);
    },
}


module.exports = DingTalk;