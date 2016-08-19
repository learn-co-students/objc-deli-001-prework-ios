//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString*)stringWithDeliLine:(NSArray*)deliLine {
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    } else {
        NSMutableString* output = [@"The line is:" mutableCopy];
        NSUInteger spotInLine = 1;
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            [output appendString:@"\n"];
            [output appendFormat:@"%lu. %@",spotInLine,deliLine[i]];
            spotInLine++;
        }
        return output;
    }
}

-(void)addName:(NSString*)name toDeliLine:(NSMutableArray*)deliLine {
    [deliLine addObject:name];
}

-(NSString*)serveNextCustomerInDeliLine:(NSMutableArray*)deliLine {
    NSString* firstInLine = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return firstInLine;
}

@end
