//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


-(NSString*)stringWithDeliLine:(NSArray*)array;

-(NSMutableArray*)addName:(NSString*)name toDeliLine:(NSMutableArray*)array;

-(NSString*)serveNextCustomerInDeliLine:(NSMutableArray*)array;

@end

// declared!

