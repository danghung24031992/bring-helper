
#import "RNBringHelper.h"
#import <React/RCTBridge.h>
#import <React/RCTConvert.h>
#import <React/RCTEventDispatcher.h>
#import <React/RCTUtils.h>

@implementation RNBringHelper
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(keepOnScreen:(BOOL )isLive)
{
#ifdef DEBUG
    NSLog(@"[RNBringHelper][keepLiveScreen]");
#endif
    dispatch_async(dispatch_get_main_queue(), ^{
        if(isLive){
            [UIApplication sharedApplication].idleTimerDisabled = YES;
        }else{
            [UIApplication sharedApplication].idleTimerDisabled = NO;
        }
    });
}

@end
