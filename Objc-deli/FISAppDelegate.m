//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSString *linedeclaration = @"The line is:";
    
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    }
    
        else {
 
            for (NSUInteger i = 0; i < deliLine.count; i++) {
                
NSString *customers = [NSString stringWithFormat:@"\n %lu %@ ", i+1, deliLine[i]];
linedeclaration = [linedeclaration stringByAppendingString:customers];
}
return linedeclaration;
        }
    }

-(void) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
       [deliLine addObject:name];
    }
-(NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    if (deliLine.count == 0) {
        return nil;
        }else{
            NSString *firstName = deliLine[0];
            [deliLine removeObject:firstName];
            return firstName;
            }
    }


@end
