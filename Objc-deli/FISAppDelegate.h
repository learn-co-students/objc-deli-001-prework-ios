//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/*
 
 *  Declare your methods here!
 
 */

- (NSString *)stringWithDeliLine:(NSArray *)deliLine;
- addName:(NSArray *)name toDeliLine:(NSMutableArray *)deliLine;
- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine;

@end
