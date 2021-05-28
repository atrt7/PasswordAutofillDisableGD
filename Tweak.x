#import <UIKit/UIKit.h>

@interface UIKeyboardPreferencesController : NSObject
    -(BOOL)isPasswordAutoFillAllowed;
@end

%hook UIKeyboardPreferencesController
    -(BOOL)isPasswordAutoFillAllowed {
        return NO;
    }
%end
