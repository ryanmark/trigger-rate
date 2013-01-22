//
//  rate_API.m
//  ForgeInspector
//

#import "rate_API.h"
#import "iRate.h"

@implementation rate_API

+ (void)config:(ForgeTask *)task {
    
    if ([task.params objectForKey:@"applicationBundleID"] != nil) {
        [iRate sharedInstance].applicationBundleID = [task.params objectForKey:@"applicationBundleID"];
    }
    
    if ([task.params objectForKey:@"appStoreID"] != nil) {
        [iRate sharedInstance].appStoreID = [[task.params objectForKey:@"appStoreID"] integerValue];
    }

    if ([task.params objectForKey:@"appStoreGenreID"] != nil) {
        [iRate sharedInstance].appStoreGenreID = [[task.params objectForKey:@"appStoreGenreID"] integerValue];
    }

    if ([task.params objectForKey:@"daysUntilPrompt"] != nil) {
        [iRate sharedInstance].daysUntilPrompt = [[task.params objectForKey:@"daysUntilPrompt"] floatValue];
    }

    if ([task.params objectForKey:@"usesUntilPrompt"] != nil) {
        [iRate sharedInstance].usesUntilPrompt = [[task.params objectForKey:@"usesUntilPrompt"] integerValue];
    }

    if ([task.params objectForKey:@"eventsUntilPrompt"] != nil) {
        [iRate sharedInstance].eventsUntilPrompt = [[task.params objectForKey:@"eventsUntilPrompt"] integerValue];
    }

    if ([task.params objectForKey:@"usesPerWeekForPrompt"] != nil) {
        [iRate sharedInstance].usesPerWeekForPrompt = [[task.params objectForKey:@"usesPerWeekForPrompt"] floatValue];
    }

    if ([task.params objectForKey:@"remindPeriod"] != nil) {
        [iRate sharedInstance].remindPeriod = [[task.params objectForKey:@"remindPeriod"] floatValue];
    }

    [task success:nil];
}

+ (void)show:(ForgeTask*)task {    
    [[iRate sharedInstance] promptForRating];
    [task success:nil];
}

@end
