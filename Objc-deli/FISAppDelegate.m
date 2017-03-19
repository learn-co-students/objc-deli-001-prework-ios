//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}


-(NSString*)stringWithDeliLine:(NSArray*)deliLine; {
    NSMutableString*customers= [[NSMutableString alloc] init];
        if ([deliLine count]==0) {
            NSString*nobody=@"The line is currently empty.";
            return nobody;
            }
        else {
            customers=[@"The line is:" mutableCopy];
            for(NSUInteger i=0;i<[deliLine count];i++){
                [customers appendFormat: @"\n%lu. %@", i+1, deliLine[i]];
                
            }
        }
    
    return customers;
}

-(void*) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine; {
    [deliLine addObject:(name)];
    return nil;
}

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine; {
    NSString*removedcustomer=[deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    return removedcustomer;
    
    //attempt for all names in line
    //   NSMutableString*savednames=[[NSMutableString alloc] init];
  //  for(NSUInteger i=0;i<[deliLine count];i++){
  //      [savednames appendFormat: @"Here is the list of served customers and their order number: \n%lu. %@", i+1, deliLine[i]];
   //     [deliLine removeObjectAtIndex:i];
        
   // }
   // return deliLine;
}

@end
