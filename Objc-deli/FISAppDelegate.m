//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

/*
 
 *  Define your methods here!
 
 */
-(NSString *)stringWithDeliLine:(NSArray *)deliLine{
    if ([deliLine count]==0) {
        return @"The line is currently empty.";
    }
    NSString *line = @"The line is:\n";
    for(NSUInteger i=0;i<[deliLine count];i++){
        line = [line stringByAppendingFormat:@"%lu. %@",i+1,deliLine[i] ];
        if(i!=[deliLine count]-1){
            line=[line stringByAppendingString:@"\n"];
        }
    }
        return line;
}
-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name];
}
-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *) deliLine{
    
    NSString *name = [deliLine[0]mutableCopy];
    [deliLine removeObjectAtIndex:0];
    
    return name;
}
@end
