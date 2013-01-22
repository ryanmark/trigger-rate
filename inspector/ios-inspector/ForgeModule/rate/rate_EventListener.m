;//
//  rate_EventListener.m
//  ForgeInspector
//

#import "rate_EventListener.h"
#import "iRate.h"

@implementation rate_EventListener

+ (void)application:(UIApplication *)application preDidFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [iRate sharedInstance].useAllAvailableLanguages = NO;
    [iRate sharedInstance].onlyPromptIfLatestVersion = NO;
}

@end
