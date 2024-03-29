/********* cordova-plugin-dingTalk.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import <DTShareKit/DTOpenKit.h>

@interface cordova_plugin_dingTalk : CDVPlugin
- (void)openDingTalk;
- (void)shareTextToDingTalk;
- (void)shareImageToDingTalk;
- (void)shareWebToDingTalk;
- (void)ssoWithDingTalk;
@end

@implementation cordova_plugin_dingTalk

- (void)openDingTalk
{
    NSLog(@"openDingTalk: %@", @([DTOpenAPI openDingTalk]));
}


- (void)shareTextToDingTalk
{
    DTSendMessageToDingTalkReq *sendMessageReq = [[DTSendMessageToDingTalkReq alloc] init];

    DTMediaMessage *mediaMessage = [[DTMediaMessage alloc] init];

    DTMediaTextObject *textObject = [[DTMediaTextObject alloc] init];
    textObject.text = @"Hi DingTalk.";

    mediaMessage.mediaObject = textObject;
    sendMessageReq.message = mediaMessage;

    BOOL result = [DTOpenAPI sendReq:sendMessageReq];
    if (result)
    {
        NSLog(@"Text 发送成功.");
    }
    else
    {
        NSLog(@"Text 发送失败.");
    }
}

- (void)shareImageToDingTalk
{
    DTSendMessageToDingTalkReq *sendMessageReq = [[DTSendMessageToDingTalkReq alloc] init];

    DTMediaMessage *mediaMessage = [[DTMediaMessage alloc] init];

    DTMediaImageObject *imageObject = [[DTMediaImageObject alloc] init];
    imageObject.imageData = [NSData data];
    imageObject.imageURL = @"https://img.alicdn.com/tps/TB1dagdIpXXXXc5XVXXXXXXXXXX.jpg";

    mediaMessage.mediaObject = imageObject;
    sendMessageReq.message = mediaMessage;

    BOOL result = [DTOpenAPI sendReq:sendMessageReq];
    if (result)
    {
        NSLog(@"Image 发送成功.");
    }
    else
    {
        NSLog(@"Image 发送失败.");
    }
}

- (void)shareWebToDingTalk
{
    DTSendMessageToDingTalkReq *sendMessageReq = [[DTSendMessageToDingTalkReq alloc] init];

    DTMediaMessage *mediaMessage = [[DTMediaMessage alloc] init];
    DTMediaWebObject *webObject = [[DTMediaWebObject alloc] init];
    webObject.pageURL = @"http://www.dingtalk.com/";

    mediaMessage.title = @"钉钉";

    mediaMessage.thumbURL = @"https://static.dingtalk.com/media/lALOGp__Tnh4_120_120.png";

    // Or Set a image data which less than 32K.
    // mediaMessage.thumbData = UIImagePNGRepresentation([UIImage imageNamed:@"open_icon"]);

    mediaMessage.messageDescription = @"钉钉，是一个工作方式。为企业量身打造统一办公通讯平台";
    mediaMessage.mediaObject = webObject;
    sendMessageReq.message = mediaMessage;

    BOOL result = [DTOpenAPI sendReq:sendMessageReq];
    if (result)
    {
        NSLog(@"Link 发送成功.");
    }
    else
    {
        NSLog(@"Link 发送失败.");
    }
}


- (void)ssoWithDingTalk
{
    DTAuthorizeReq *authReq = [DTAuthorizeReq new];

    authReq.bundleId = @"dingoak5hqhuvmpfhpnjvt";
    BOOL result = [DTOpenAPI sendReq:authReq];
    if (result) {
        NSLog(@"授权登录 发送成功.");
    }
    else {
        NSLog(@"授权登录 发送失败.");
    }
}

@end
