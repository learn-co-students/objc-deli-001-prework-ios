//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    NSString *nameOfNewCustomer = @"Michael";
    
    NSMutableArray *newCustomer = [[NSMutableArray alloc] init];
    
    [self addName:nameOfNewCustomer toDeliLine:newCustomer];
    
    return YES;
}

-(NSString *) stringWithDeliLine:(NSArray *)deliLine{

    NSString *theLineIs = @"The line is:";
    
    if ([deliLine count] == 0) {
        
        return @"The line is currently empty.";
        
    } else {
        
        for (NSUInteger index = 0; index < deliLine.count; index++) {
            
            NSString *customers = [NSString stringWithFormat:@"\n %lu %@ ",
                                   index+1, deliLine[index]];
            theLineIs = [theLineIs stringByAppendingString:customers];
        }
        return theLineIs;
    }
}

-(void) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}
-(NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    if (deliLine.count == 0) {
        return nil;
    }else{
    NSString *firstObject = deliLine[0];
    [deliLine removeObject:firstObject];
    return firstObject;
    }
}
@end
