//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

// define method(s) implementations

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    // determine if deliLine is empty
    
    NSUInteger lineCount = [deliLine count];
    NSString *peopleInLine = @"";
    
    if (lineCount == 0) {
        NSString *lineIsEmpty = @"The line is currently empty.";
        return lineIsEmpty;
    } else {
        
       for (NSInteger i = 0; i < lineCount; i++) {
           
           NSUInteger personNumber = i + 1;
           
           if (personNumber < lineCount) {
               peopleInLine = [peopleInLine stringByAppendingFormat:@"%lu. %@\n", personNumber, deliLine[i]];
           } else {
               peopleInLine = [peopleInLine stringByAppendingFormat:@"%lu. %@", personNumber, deliLine[i]];
           }
        }
    }
    
    NSString *theLineIs = @"The line is:\n";
    NSString *lineOutput = [theLineIs stringByAppendingString:peopleInLine];
    
    return lineOutput;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    // add the submitted <name> to the <deliLine> mutable array
    
    [deliLine addObject:name];
    
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    // save 1st name in nsstring; remove 1st object from deliLine; return name
    
    NSString *firstInLine = deliLine[0];
    
    [deliLine removeObjectAtIndex:0];
    
    return firstInLine;
}

@end
