//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSArray *)deliLine {
    NSString *line = @"The line is:";
    
    if ([deliLine count] == 0) {
        NSLog(@"The line is empty.");
    }
    else
    {
        for (NSUInteger i = 0; i < [deliLine count]; i++)
        {
            NSString *announce = [NSString stringWithFormat:@"\n %lu. %@.", i++, deliLine[i]];
            line = [line stringByAppendingString:announce];
        }
    }
    
    return  line;
}
-(NSString *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    return nil;
}
-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    return nil;
}

@end
