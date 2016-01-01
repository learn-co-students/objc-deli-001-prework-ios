//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString*) stringWithDeliLine:(NSArray *)deliLine{
    NSMutableString* s = [NSMutableString new];
    
    if([deliLine count]==0) return @"The line is currently empty.";
    else{
        [s appendFormat:@"The line is:"];
        for(NSUInteger i=0; i< [deliLine count]; i++){
            [s appendFormat:@"\n%lu. %@",i+1,deliLine[i]];
        }
        return s;
    }
    
}

- (void) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name];
}


- (NSString*) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    NSString* s = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return s;
}

@end
