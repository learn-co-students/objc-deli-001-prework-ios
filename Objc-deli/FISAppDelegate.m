//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return nil;
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    NSString *empty = @"The line is currently empty.";
    NSInteger limit = [deliLine count];
    
    if (limit == 0) {
        NSLog(@"%@", empty);
    }
    else {
        NSLog(@"The line is:");
        for  (NSUInteger i = 0 ;i< limit ; i++) {
                  NSUInteger lineOrder = i+1;
            NSLog(@"%lu. %@\n", lineOrder, deliLine [i] );
        }
    };
};


-(void)addName:ToDeliLine : (NSString *)name :(NSMutableArray *)deliLine; {
    [deliLine addObject: name];
    
};



-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *savedString = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    NSLog(@"%@", savedString);
    return savedString;
};





@end
