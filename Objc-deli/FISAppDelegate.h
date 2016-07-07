//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSString *)stringWithDeliLine:(NSArray *)deliLine;
- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine;
- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine;


/*
 
 *  Declare your methods here!;
 
 
 - NSMutablArray * deliLine;
 - NSMutableArray * deliLine2;
 - NSString * deliString;
 - NSString * deliString2;
 
 - NSArray * stringWithDeliLine
 - NSArray * addName:toDeliLine
 - NSArray * serveNextCustomerInDeliLine
 
 
 
 
 
 */

@end
