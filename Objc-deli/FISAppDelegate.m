//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSArray *)deliLine{
    
    NSMutableString *deliString = [[NSMutableString alloc]init];
    
    if (deliLine.count == 0 ){
        [deliString appendString:@"The line is currently empty."];
        return [NSString stringWithString:deliString];
    }
    
    [deliString appendString:@"The line is:"];
    for (NSUInteger i = 0; i < deliLine.count; i++) {
        NSInteger spotInLine = i + 1;
        [deliString appendFormat:@"\n%lu. %@", spotInLine, deliLine[i]];
    
    }
    return [NSString stringWithString:deliString];
    
}
-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    
    [deliLine addObject:name];
    
}
-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    NSMutableString *currentCustomer = [NSMutableString new];
    NSUInteger currentIndex;
    for (NSUInteger i = 0; i < deliLine.count; i++) {
        currentIndex = i;
    }
    currentCustomer = [deliLine objectAtIndex:currentIndex];
    [deliLine removeObjectAtIndex:0];
    
    return currentCustomer;
    
}


@end
