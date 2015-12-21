//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/*Instance methods
 - instance method indicator
 () return type
 * object variables have it
 method name:argument
 */

- (NSString *)stringWithDeliLine:(NSArray *)deliLine; //accepts an NSArray argument deliLine and returns an NSString object.

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine; //accepts an NSString called name and an NSMutableArray called deliLine as arguments, and returns nothing.

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine; //accepts an NSMutableArray called deliLine as an argument and returns an NSString.

@end

