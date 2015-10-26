//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
 //  Define your methods here!

-(NSString *)stringWithDeliLine:(NSArray *)deliLine {
    NSMutableString *queue = [[NSMutableString alloc]initWithString:@"The line is: "];
    
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    } else {
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            NSString *customers = [NSString stringWithFormat:@"\n%lu. %@", i+1, deliLine[i]];
            [queue appendString:customers];
        }
        return queue;
    }
}

-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
    
}

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *firstName = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return firstName;
}
@end
