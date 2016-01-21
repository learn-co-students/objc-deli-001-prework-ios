//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return nil;
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine; {
    if ([deliLine count] == 0) {
        NSLog(@"The line is currently empty.");
    }
    else {
              NSLog(@"The line is:");
        for  (NSUInteger i = 0 ;i< [deliLine count] ; i++) {
                  NSUInteger lineOrder = i+1;
                  NSString *printDeliLine = [NSString stringWithFormat:@"%lu. %@",lineOrder, deliLine[i]];
                  NSLog(@"%@", printDeliLine);
                  return printDeliLine;
        } ;
        }};

    
- (void) ToDeliLine:(NSString *)name :(NSMutableArray *)deliLine; {
    [deliLine addObject: name];
};

    
- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine; {
        for (NSUInteger i = 0; i < [deliLine count]; i++ ) {
            NSString *savedString = deliLine[i];
            [deliLine removeObjectAtIndex: i];
            return savedString;
        };
};


@end
