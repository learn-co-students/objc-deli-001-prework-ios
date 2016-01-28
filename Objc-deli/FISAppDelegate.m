//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSArray *)deliLine;{
    
    NSMutableString *lineString = [[NSMutableString alloc] init];
    
    [lineString appendString: @"The line is:"];
    
    NSString *nothingThere = @"The line is currently empty.";
    
    if ([deliLine count] == 0){
        return nothingThere;
    }
    else {
        for (NSInteger i = 0; i < [deliLine count]; i++) {
            NSUInteger index = i + 1;
            NSString *toString = deliLine[i];
            [lineString appendFormat:@"\n%li. %@", index, toString];
            }
        
        }
    NSString *backToString = lineString;
    
    return backToString;
    }

-()addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine;{
    [deliLine addObject:name];
    return nil;
    }

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine;{
    NSString *next = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return next;
    }

@end
