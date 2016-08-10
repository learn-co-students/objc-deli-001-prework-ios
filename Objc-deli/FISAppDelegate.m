//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *) stringWithDeliLine:(NSArray *)deliLine {
    NSMutableString *theLine = [[NSMutableString alloc]initWithString:@"The line is:"];

    if ([deliLine count] == 0){
            theLine = [[theLine stringByReplacingOccurrencesOfString:@"The line is:"withString:@"The line is currently empty."] mutableCopy];
        }
    
    for (NSUInteger i = 0; i < [deliLine count]; i++) {
        [theLine appendFormat:@"\n%lu. %@",i+1,deliLine[i]];
        }
    return theLine;
    }

-(void) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
        [deliLine addObject:name];
    }

-(NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nextCustomer;
    }
@end
