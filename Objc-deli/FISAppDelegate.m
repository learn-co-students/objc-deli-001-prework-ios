//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString*)stringWithDeliLine:(NSArray*) deliLine
{
    NSString *empty = @"The line is currently empty.";
    NSMutableString *namesInLine = [[NSMutableString alloc]init];
    
    if(self.deliLine == nil || [self.deliLine count] == 0)
    {
        return empty;
    }
    else
    {
        for(NSString *string in self.deliLine)
        {
            [namesInLine appendString:string];
        }
    }
    return [NSString stringWithString:namesInLine];
}

-(void)addName:toDeliLine:(NSString*)name:(NSMutableArray*)deliLine
{
    [self.deliLine addObject:name];
}

-(NSString*)serveNextCustomerInDeliLine:(NSMutableArray*)deliLine
{
    NSString *servedCustomer = [self.deliLine objectAtIndex:0];
    [self.deliLine removeObjectAtIndex:0];
    
    return servedCustomer;
}

@end
