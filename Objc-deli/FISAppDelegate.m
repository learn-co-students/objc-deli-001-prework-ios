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

- (NSString *) stringWithDeliLine: (NSArray *) deliLine; {
   
    NSMutableString *lineOfPeeps = [[NSMutableString alloc]init];
    if ([deliLine count] == 0){
        lineOfPeeps = [@"The line is currently empty." mutableCopy];
        
} else {
    // num is more than zero
    lineOfPeeps = [@"The line is:" mutableCopy];
    
    for (NSUInteger i = 0; i < [deliLine count]; i++) {
       // original line [lineOfPeeps appendFormat: @"%@ \n %lu. %@", i + 1, deliLine[i]];
        // no errors line [lineOfPeeps appendFormat: @"\n %lu %@", i + 1, deliLine[i]];
        [lineOfPeeps appendFormat: @"\n%lu. %@", i + 1, deliLine[i]];
    }
  }

    return lineOfPeeps;
}

- (void *)addName: (NSString*)name toDeliLine: (NSMutableArray*)deliLine;{
   
    if (name > 0) {
        [deliLine addObject: name];
    }
    
    return nil;
}



- (NSString*)serveNextCustomerInDeliLine:(NSMutableArray*)deliLine;{

    
    [deliLine removeObjectAtIndex:0];
    
    return deliLine;

}



@end
